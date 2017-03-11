using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class sight2 : MonoBehaviour
{
    enum DangerState { white = 8, yellow = 6, orange = 4, red = 1 }

    SphereCollider sphere;
    public float heightMultiplier;
    public float rayOffset;
    private NPC npc;
    public GameObject currDest;
    private DangerState state = DangerState.red;

    [HideInInspector]
    public float sightDistance;
    public bool readyToLook = true;
    public bool obstacleDetected = false;
    public bool intruder = false;
    public float castWidth = 3f;

    private bool slowCRrunning = false;

    // Use this for initialization
    void Start()
    {
        sphere = GetComponent<SphereCollider>();
        sightDistance = sphere.radius;
        npc = GetComponentInParent<NPC>();
        
    }

    void OnTriggerStay(Collider col)
    {
        if(col.gameObject.layer == 8)
        {
            intruder = true;
        }
    }

    void OnTriggerExit(Collider col)
    {
        if(col.gameObject.layer ==8)
        {
            intruder = false;
        }
    }

    // Update is called once per frame
    void Update()
    {    
        if (!obstacleDetected)
        {
            var moveTo = currDest.transform.position;
            moveTo.y = 0;
            npc.npcLook(moveTo);
            npc.npcMove(moveTo);
        }
        else
        {
            var thisPos = npc.transform.position;
            var fwd = npc.transform.forward;
            var ahead = thisPos + fwd* sightDistance;
            ahead.y = 0;
            Debug.Log("ahead: " + ahead);
            npc.npcLook(ahead);
            npc.npcMove(ahead);
        }
    }

    void FixedUpdate()
    {        
        if (intruder)
        {
            Debug.DrawRay(transform.position + Vector3.up * (heightMultiplier - rayOffset / 2), transform.forward * sightDistance, Color.blue);

            RaycastHit hit;
            if (readyToLook)
            {
                StartCoroutine(notReadyToLook(.2f));
                var avoidance_force = Vector3.zero;
                if (Physics.SphereCast(transform.position + Vector3.up * (heightMultiplier - rayOffset / 2), castWidth, transform.forward * sightDistance, out hit, sightDistance, 1 << 8))
                {
                    obstacleDetected = true;
                    state = getDangerState(hit.distance);
                    Debug.Log(hit.distance + " " + state + " " + hit.transform.name);
                    if (Vector3.Angle(transform.right, hit.point - npc.transform.position) <= 90)
                        npc.veer(-((int)DangerState.white - (int)state) * 10);
                    else
                        npc.veer(((int)DangerState.white - (int)state) * 10);

                }
                else
                    obstacleDetected = false;

            }

        }
    }

    IEnumerator notReadyToLook(float time)
    {
        readyToLook = false;
        yield return new WaitForSeconds(time);
        readyToLook = true;
    }

    
    DangerState getDangerState(float distance)
    {
        if (distance > (int)DangerState.yellow)
            return DangerState.white;
        if (distance > (int)DangerState.orange)
            return DangerState.yellow;
        if (distance > (int)DangerState.red)
            return DangerState.orange;
        else
            return DangerState.red;
    }
}
