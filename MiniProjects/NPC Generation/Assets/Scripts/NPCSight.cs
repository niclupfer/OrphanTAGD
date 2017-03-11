using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPCSight : MonoBehaviour {

    enum DangerState { white=0, yellow=1, orange=2, red = 4 };
   
    [HideInInspector]
    public NPC npc;
    public float distanceBetweenLines = 1f;

    //PUBLIC LINECAST
    public int numLines = 5;
    public float detectionRange = 8f;
    public int numObs = 0;
    public int stuckCount = 0;
    

    //PRIVATE
    private Obstacle nearest = new Obstacle();
    private Obstacle nextNearest = new Obstacle();
    private bool readyToLook = true;
    private bool readyToAvoid = true;
    private SphereCollider sphere;
    
    

    class Obstacle
    {
        public GameObject gameObj;
        public string tag;
        public float distance;
        public Vector3 position;
        public Vector3 direction;
        public int stuckCount;        

        public Obstacle()
        {
            tag = "";
            distance = 0;
            gameObj = null;
            position = Vector3.zero;
            direction = Vector3.zero;
        }
        public Obstacle(GameObject g, string t, float d, Vector3 p, Vector3 dir)
        {
            tag = t;
            distance = d;
            gameObj = g;
            position = p;
            direction = dir;
        }
        // used to print the obstacle for debugging purposes
        public string printObstacle()
        {
            string printOut = "Obstacle " + gameObj + " detected. Tagged as: " + tag + " at " + position + " relative in the direction of " + direction + ".";
            return printOut;
        }
        // compares gameObjects to see if they are the same
        public bool isEqual(Obstacle obs)
        {
            if (obs.gameObj == gameObj)
                return true;
            else
                return false;
        }
    }

    void Start()
    {
        sphere = GetComponent<SphereCollider>();        
    }

    void OnTriggerStay(Collider col)
    {

        // create lines of sight
        if (col.transform != transform.parent && readyToLook && col.gameObject.layer == 8)
        {            
            StartCoroutine(notReadyToLook(0f));
            Vector3 fwd = transform.forward;
            Vector3 thisPos = transform.position;
            thisPos.y -= 1f;
            Vector3 pos = thisPos + detectionRange * fwd;
            List<Obstacle> obstaclesDetected = new List<Obstacle>();
            stuckCount = 0;
            for (int i = -(int)Mathf.Floor(numLines / 2); i <= (int)Mathf.Floor(numLines / 2); ++i)
            {
                Vector3 losDir = new Vector3(-fwd.z, thisPos.y, fwd.x).normalized;
                Vector3 lineOfSight = pos + losDir * distanceBetweenLines * i;
                lineOfSight.y = thisPos.y;
                RaycastHit hit;
                if (Physics.Linecast(thisPos, lineOfSight, out hit, 1 << 8))
                {
                    Obstacle obs = new Obstacle(hit.transform.gameObject, hit.transform.tag, hit.distance, hit.point, hit.point - transform.position);
                    if (obstaclesDetected.Count == 0)
                        obstaclesDetected.Add(obs);
                    else
                    {
                        // detects if the obstacle has been added already. if so, update. if not, add to list
                        for (int k = 0; k < obstaclesDetected.Count; ++k)
                        {
                            if (obs.isEqual(obstaclesDetected[k]))
                            {
                                obstaclesDetected[k] = obs;
                                ++stuckCount;
                            }
                            else if (k == obstaclesDetected.Count - 1)
                            {
                                obstaclesDetected.Add(obs);
                            }
                        }
                    }
                }
                Debug.DrawLine(thisPos, lineOfSight, Color.green);
            }
            numObs = obstaclesDetected.Count;
            if (numObs != 0)
            {
                nearest = findNearestCollision(obstaclesDetected);
                Debug.DrawLine(thisPos, nearest.position, Color.red);

                if (numObs > 1)
                {
                    npc.obstacleDetected = true;
                    obstaclesDetected.Remove(nearest);
                    nextNearest = findNearestCollision(obstaclesDetected);
                    Debug.DrawLine(thisPos, nextNearest.position, Color.blue);
                }
            }
            else
            {
                npc.obstacleDetected = false;
                nearest = new Obstacle();
                nextNearest = new Obstacle();
            }

        }
      
    }

    Obstacle findNearestCollision(List<Obstacle> obsDet)
    {
        Obstacle obs = obsDet[0];
        for(int i = 1; i<obsDet.Count; ++i)
        {
            if (obsDet[i].distance < obs.distance)
                obs = obsDet[i];
        }
        return obs;
    }


    void Update() {
        // check to see if more than one obstacle
        if (npc.state == NPC.State.FREEROAM)
        {
            npc.transform.position += transform.forward * Time.deltaTime * npc.walkingSpeed;
             npc.GetComponent<Animator>().SetFloat("Speed", npc.walkingSpeed);            
        }

        if (readyToAvoid && numObs > 1)
        {
            StartCoroutine(notReadyToAvoid(0.2f));
            obstacleAvoidance(nearest, nextNearest);
        }
        else if (readyToAvoid && numObs == 1)
        {

            StartCoroutine(notReadyToAvoid(0.2f));
            obstacleAvoidance(nearest, new Obstacle());
        }
    }
 
    void obstacleAvoidance(Obstacle near, Obstacle next)
    {
        DangerState ds = assessDanger(near, next);
        if (ds == DangerState.red)
            StartCoroutine(npc.chillOut(.2f));
        float nearAngle = Vector3.Angle(transform.right, near.direction);
        float nextAngle = Vector3.Angle(transform.right, next.direction);
        // avoiding one object
        if (next.gameObj == null)
        {
            if (nearAngle <= 90) //obstacle is to the right, so veer left
                npc.veer(-(int)ds * 10);
            else
                npc.veer((int)ds * 10); //obstacle is to the left, so veer right
        } // avoid the second object too
        else
        {

        }
     
    }
    
    // welcome to the danger zone
    DangerState assessDanger(Obstacle near, Obstacle next)
    {
        if (stuckCount > 1)
            return DangerState.red;
        if (near.distance < .5)
            return DangerState.red;
        return DangerState.yellow;
    } 
    
    IEnumerator notReadyToLook(float time)
    {
        readyToLook = false;
        yield return new WaitForSeconds(time);
        readyToLook = true;
    }

    IEnumerator notReadyToAvoid(float time)
    {
        readyToAvoid = false;   
        yield return new WaitForSeconds(time);
        readyToAvoid = true;
    }
}
