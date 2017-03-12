using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class sight2 : MonoBehaviour
{
    enum DangerState { white = 8, yellow = 5, orange = 4, red = 3 }

    SphereCollider sphere;
    public float heightMultiplier;
    public float rayOffset;
    private NPC npc;
    public GameObject currDest;
    private DangerState state = DangerState.red;

    [HideInInspector]
    public float sightDistance;
    public bool intruder = false;
    public float castWidth = 3f;

    private bool slowCRrunning = false;

    //debug variables
    public float backCastOffset = 2f;
    public float timeToLook = .2f;

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
        
    }

    void FixedUpdate()
    {        
        if (intruder)
        {
            var back = (transform.position + Vector3.up * (heightMultiplier - rayOffset / 2)) - transform.forward * backCastOffset;
         //   Debug.DrawRay(back, transform.forward * sightDistance, Color.red);

            RaycastHit hit;
            if (npc.readyToLook)
            {
                StartCoroutine(notReadyToLook(timeToLook));
                var avoidance_force = Vector3.zero;
                if (Physics.SphereCast(back, castWidth, transform.forward * sightDistance, out hit, sightDistance, 1 << 8))
                {
                    npc.obstacleDetected = true;
                    state = getDangerState(hit.distance - backCastOffset);
            //        Debug.Log(hit.distance + " " + state + " " + hit.transform.name);
                    if (Vector3.Angle(transform.right, hit.point - npc.transform.position) <= 90)
                        npc.veer(-((int)DangerState.white - (int)state) * 10);
                    else
                        npc.veer(((int)DangerState.white - (int)state) * 10);
                    if (hit.distance <= 0.1)
                        npc.veer(180);

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
        if(!npc.chilling)
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
}
