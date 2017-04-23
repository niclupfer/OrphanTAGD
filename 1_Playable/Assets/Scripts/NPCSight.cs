using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class NPCSight : MonoBehaviour
{
    enum DangerState { white = 8, yellow = 5, orange = 4, red = 3 }

    SphereCollider sphere;
    public float heightMultiplier;
    public float rayOffset;
    private NPCController npc;
    private DangerState state = DangerState.red;

    private bool checkForIntruder = true;

    [HideInInspector]
    public float sightDistance;
    public bool intruder = false;
    public float castWidth = 3f;
    public float tooCloseDist = 0.025f;

    private bool slowCRrunning = false;

    //debug variables
    public float backCastOffset = 2f;
    public float timeToLook = .2f;
    // Use this for initialization
    void Start()
    {
        sphere = GetComponent<SphereCollider>();
        sightDistance = sphere.radius;
        npc = GetComponentInParent<NPCController>();
    }

    void OnTriggerStay(Collider col)
    {
        if (checkForIntruder)
        {
            if (col.gameObject.layer == 8)
            {
                intruder = true;
            }
            StartCoroutine(IntruderCheck(.5f));
        }
    }

    void OnTriggerExit(Collider col)
    {
        if(col.gameObject.layer == 8)
        {
            intruder = false;
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    

    void FixedUpdate()
    {
        if (npc.state != NPCController.State.IDLE && intruder)
        {
            var back = (transform.position + Vector3.up * (heightMultiplier - rayOffset / 2)) - transform.forward * backCastOffset;
            Debug.DrawRay(back, transform.forward * sightDistance, Color.red);

            RaycastHit hit;
            if (npc.readyToLook)
            {
                StartCoroutine(notReadyToLook(timeToLook));
                var avoidance_force = Vector3.zero;
                if (Physics.SphereCast(back, castWidth, transform.forward * sightDistance, out hit, sightDistance, 1 << 8))
                {
                    if (hit.transform != transform.parent)
                    {
                        npc.obstacleDetected = true;
                        state = getDangerState(hit.distance - backCastOffset);
                    //    Debug.Log(transform.parent.name + " " + hit.distance + " " + state + " " + hit.transform.name);
                    //    Debug.Log(hit.distance);
                        if (hit.distance > tooCloseDist)
                        {
                            if (Vector3.Angle(transform.right, hit.point - npc.transform.position) <= 90)
                                npc.Veer(-((int)DangerState.white - (int)state) * 10);
                            else
                                npc.Veer(((int)DangerState.white - (int)state) * 10);
                        }
                        else
                        {
                            npc.Veer(180);
                            //npc.lastKnownState = npc.state;
                            //npc.state = NPCController.State.IDLE;                            
                        }
                    }
                }
                else
                    npc.obstacleDetected = false;

            }

        }
    }

    IEnumerator notReadyToLook(float time)
    {
        npc.readyToLook = false;
        yield return new WaitForSeconds(time);
        npc.readyToLook = true;
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
    
    IEnumerator IntruderCheck(float time)
    {
        checkForIntruder = false;
        yield return new WaitForSeconds(time);
        checkForIntruder = true;
    }
}
