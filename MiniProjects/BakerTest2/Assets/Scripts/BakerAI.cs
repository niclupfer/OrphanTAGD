using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BakerAI : MonoBehaviour {

    public Vector3 spawn;
    public int speed;
    
    public GameObject player;//AKA object to chase

    public float giveUpTimer;//How long until gives up
    public float debounceTime = 0.1f;//Interval b/t chase update
    private float lastChaseTime;//Last time chase was updated

    private Collider playerCollider;

    public bool chasing = false;//Is in chase state
    private bool inSight = false;//Can see the player (raycast)
    public bool atShop = true;//Can see the player (raycast)
    private bool wander = false;//Looking for spawn (obstruction in the way)
    public bool movingToSpawn = true;

    private Rigidbody rb;
    private bool first = true;//Makes sure chase is set once
    private float lastTimeSeen = 0;//Last time player is seen
    private Vector3 lastPlaceSeen;//Last place player is seen
    //Alter path (obstacles)
    private bool readyToLook;
    private SphereCollider sphere;
    private GameObject target;
    private Vector3 dest;

    public Vector3 lastPosition;
    public float stuckAmount = 0.1f;

	void Start ()
    {
        spawn = transform.position;
        rb = GetComponent<Rigidbody>();
        player = GameObject.Find("Player");
        playerCollider = player.GetComponent<CapsuleCollider>();
        readyToLook = true;
        sphere = this.gameObject.AddComponent<SphereCollider>();
            sphere.center = new Vector3(0,2,0);
            sphere.radius = 1f;//about?
            sphere.isTrigger = true;//canCollide = false
	}

    private IEnumerator OnTriggerEnter(Collider other)
    {
        if (other == sphere)
        {
            Debug.Log("Sphere trigerred");
            RaycastHit hit;
            Physics.SphereCast(transform.position + sphere.center, sphere.radius, transform.forward, out hit, 5f);
            float angle = Vector3.Angle(transform.right, hit.point - transform.position);
            if(angle >= 90)
            {
                dest = transform.right + transform.position;
                readyToLook = false;
                rb.velocity = transform.right * speed * Time.deltaTime;
                dest = new Vector3(dest.x, 0f, dest.z);
                transform.LookAt(dest);
            }
            else
            {
                dest = -transform.right + transform.position;
                readyToLook = false;
                rb.velocity = -transform.right * speed * Time.deltaTime;
                dest = new Vector3(dest.x, 0f, dest.z);
                transform.LookAt(dest);
            }
            yield return new WaitForSeconds(1.5f);
            readyToLook = true;
        }
    }
    void Update ()
    {
        /*
        //bool first is used to make it so this only changes chasing when bread is taken
        if (first && !bread.activeSelf){
            first = false;
            chasing = true;
        }
        */
	}

    public void StartChase()
    {
        if (atShop)
        {
            chasing = true;
            lastPosition = transform.position;
            atShop = false;
            Debug.Log("Im gonna get you kid!");
            lastTimeSeen = Time.time;
        }
    }

    //private Vector3 findNextDest(Vector3 dest)
    //{
    //    int alpha = 10;
    //    int maxDeg = 0;
    //    float maxDistance = 0;
    //    Vector3 p1 = transform.position;
    //   // Debug.Log("Looking for optimal angle...");
    //    for(int deg = -alpha/2; deg <=alpha/2; deg += 5)
    //    {
    //        Quaternion q = Quaternion.AngleAxis(deg, Vector3.up);
    //        Vector3 direction = q * (dest - transform.position).normalized;
    //        //float height = 4;
    //        RaycastHit hit;
    //        //Debug.DrawRay(transform.position + sphere.center, direction, Color.red,1f);
    //        Physics.SphereCast(transform.position + sphere.center, sphere.radius, direction, out hit, 100f);
    //        if(hit.distance > maxDistance)
    //        {
    //            //Debug.Log("Deg: " + maxDeg + ">" + deg + "; " + hit.distance + " > " + maxDistance);
    //            maxDeg = deg;
    //            maxDistance = hit.distance;
    //        }
    //        //Debug.Log("MaxDeg: " + maxDeg + ";deg" + deg + "; hit:" + hit.distance + " max:" + maxDistance);
    //    }
    //    Debug.Log("Max Angle: " + maxDeg + "; Direction: "+ Quaternion.AngleAxis(maxDeg, Vector3.up) * transform.forward);
    //    Debug.Log("\t"+(dest - transform.position));
    //    return Quaternion.AngleAxis(maxDeg, Vector3.up) * transform.forward;
    //}   
    void FixedUpdate()
    {
        if(Time.time - lastChaseTime > debounceTime && readyToLook) {
            lastChaseTime = Time.time;
            //CHASING
            if (chasing)
            {
                var playerChest = new Vector3(player.transform.position.x, player.transform.position.y + 1.5f, player.transform.position.z);
                var bakerHead = new Vector3(transform.position.x, transform.position.y + 2.5f, transform.position.z);

                Vector3 movement = playerChest - bakerHead;
                float distance = movement.magnitude;                      
                

                //Casts ray from Baker to Player
                RaycastHit hit;//object hit by ray
                Physics.Raycast(bakerHead, movement, out hit, distance+10);
                Debug.DrawRay(bakerHead, movement, Color.red,1);
                //if ray hits Player, moves at [speed] towards 'player'
                if (hit.collider == playerCollider)
                {
                    lastTimeSeen = Time.time;
                    lastPlaceSeen = playerChest;

                    movement = playerChest - bakerHead;
                    //IF the baker's stuck:
                    //if ((transform.position - lastPosition).magnitude < stuckAmount)
                    //{
                    //    //move left or right
                    //    var rightPos = transform.position + (transform.right * 5);
                    //    var rightDist = (playerChest - rightPos).magnitude;

                    //    var leftPos = transform.position + (transform.right * -5);
                    //    var leftDist = (playerChest - leftPos).magnitude;
                    //    if (leftDist < rightDist)
                    //    {
                    //        movement = leftPos - bakerHead;
                    //    }
                    //    else
                    //        movement = rightPos - bakerHead;
                    //}

                    var mov = new Vector3(movement.x, 0f, movement.z);
                    //rb.AddForce(mov / mov.magnitude * speed);
                    rb.velocity = mov.normalized * speed * Time.deltaTime;
                    dest = new Vector3(player.transform.position.x, 0f, player.transform.position.z);
                    transform.LookAt(dest);
                    //Debug.Log("I see you!");
                }
                //if !Player, sets 'chase' to false; stop moving
                else
                {                
                    //if giveUpTimer passes up, no chasing
                    if (lastTimeSeen + giveUpTimer < Time.time)
                    {
                        chasing = false;
                        Debug.Log("I'm giving up!");
                    }
                    //else move to last place player was seen
                    else
                    {
                        movement = lastPlaceSeen - transform.position;

                        if ((transform.position - lastPosition).magnitude < stuckAmount)
                        {
                            Debug.Log("I dont see you but im coming!");
                            // move left or right
                            //var rightPos = transform.position + (transform.right * 5);
                            //var rightDist = (lastPlaceSeen - rightPos).magnitude;

                            //var leftPos = transform.position + (transform.right * -5);
                            //var leftDist = (lastPlaceSeen - leftPos).magnitude;
                            //if (leftDist < rightDist)
                            //{
                            //    Debug.Log("Moving Left!");
                            //    movement = leftPos - bakerHead;
                            //}
                            //else
                            //{
                            //    Debug.Log("Moving Right!");
                            //    movement = rightPos - bakerHead;
                            //}
                        }

                        var mov = new Vector3(movement.x, 0f, movement.z);
                        rb.velocity = mov.normalized * speed * Time.deltaTime;
                        dest = new Vector3(movement.x + transform.position.x, 0f, movement.z + transform.position.z);
                        transform.LookAt(dest);
                    }                
                }

                //lastDistToTarget = movement.magnitude;
            }
            //If not chasing: Walk back to spawn
            else if (Vector3.Distance(transform.position, spawn) > 0.5f)
            {            
                //Calculate direction to move
                Vector3 movement = spawn - transform.position;

                if ((transform.position - lastPosition).magnitude < stuckAmount)
                {
                    // move left or right
                    //var rightPos = transform.position + (transform.right * 5);
                    //var rightDist = (spawn - rightPos).magnitude;

                    //var leftPos = transform.position + (transform.right * -5);
                    //var leftDist = (spawn - leftPos).magnitude;
                    //if (leftDist < rightDist)
                    //{
                    //    movement = leftPos - transform.position;
                    //}
                    //else
                    //    movement = rightPos - transform.position;
                }

                //lastDistToTarget = movement.magnitude;

                rb.velocity = movement.normalized * speed * Time.deltaTime;
                //transform.LookAt(movement);
                dest = new Vector3(spawn.x, spawn.y, spawn.z);
                transform.LookAt(dest);
                movingToSpawn = true;
            }
            else
            {
                movingToSpawn = false;
                atShop = true;
                rb.velocity = Vector3.zero;
            }

            lastPosition = transform.position;
        }
    }

}
