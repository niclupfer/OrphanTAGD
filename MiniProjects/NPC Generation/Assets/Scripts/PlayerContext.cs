using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerContext : MonoBehaviour {

    public GameObject contextUI;
    public GameObject priorityContext;
    public bool doingStuff = false;
    public GameObject busyNPC;

    public GameObject convoPos;
    private Vector3 originalPos;
    private Quaternion originalRot;
    public GameObject TalkBox;

    private NPCController.State lastStateWhenAlreadyIdle;

    private bool ready = true;
       
    // Use this for initialization
    void Start ()
    {
    }

    void Update()
    {
        // list all the options here
        if (doingStuff && ready)
        {
            if (Input.GetMouseButton(0))
                GetLeftContext(busyNPC);
            else if (Input.GetMouseButton(1))
                GetRightContext(busyNPC);
        }
        else if(ready)
        {
            if (priorityContext != null && Input.GetMouseButton(0))
            {
                GetLeftContext(priorityContext);
            }
            else if (priorityContext != null && Input.GetMouseButton(1))
            {
                GetRightContext(priorityContext);
            }
        }
    }
    void OnTriggerStay(Collider col)
    {
        if (col.tag == "NPC" && !doingStuff)
        {

            NPCStats npc = col.GetComponent<NPCStats>();
            // compare the distance between two npcs; the closest is higher priority
            if (priorityContext == null || 
                Vector3.Distance(col.transform.position, transform.position) < Vector3.Distance(priorityContext.transform.position, transform.position))
            {
                priorityContext = col.gameObject;
                if (npc.isContextual)
                {
                    contextUI.SetActive(true);
                    npc.GetComponentInChildren<SkinnedMeshRenderer>().material = npc.outlined;

                }
            }
            if (col.gameObject != priorityContext)
                npc.GetComponentInChildren<SkinnedMeshRenderer>().material = npc.notOutlined;
        }
    }

    void OnTriggerExit(Collider col)
    {
        if (col.tag == "NPC")
        {
            NPCStats npc = col.GetComponent<NPCStats>();
            if (npc.isContextual && col.gameObject != priorityContext)
            {
                npc.GetComponentInChildren<SkinnedMeshRenderer>().material = npc.notOutlined;
            }
            else if (col.gameObject == priorityContext)
            {
                npc.GetComponentInChildren<SkinnedMeshRenderer>().material = npc.notOutlined;
                contextUI.SetActive(false);
                priorityContext = null;
            }
        }
    }

    void GetLeftContext(GameObject obj)
    {
        StartCoroutine(notReadyToContext(1f));
        NPCStats npc = obj.GetComponent<NPCStats>();
        npc.GetComponentInChildren<SkinnedMeshRenderer>().material = npc.notOutlined;
        contextUI.SetActive(false);
        switch (npc.NPCName)
        {            
            case "adultMaleNPC":
                Talk(obj);
                break;
            case "maleChildNPC":
                Talk(obj);
                break;
            default:
                break;
        }
    }

    void GetRightContext(GameObject obj)
    {
        StartCoroutine(notReadyToContext(1f));
        NPCStats npc = obj.GetComponent<NPCStats>();
        npc.GetComponentInChildren<SkinnedMeshRenderer>().material = npc.notOutlined;
        contextUI.SetActive(false);
        switch (npc.NPCName)
        {
            case "adultMaleNPC":
                Talk(obj);
                break;
            case "maleChildNPC":
                Talk(obj);
                break;
            default:
                break;
        }
    }  
    
    IEnumerator notReadyToContext(float duration)
    {
        ready = false;
        yield return new WaitForSeconds(duration);
        ready = true;
    }

    void Talk(GameObject obj)
    {
        NPCController npc = obj.GetComponent<NPCController>();
        NPCStats stats = obj.GetComponent<NPCStats>();
        busyNPC = obj;
        if (!doingStuff)
        {
            var playerPos = transform.parent.transform.position;
            var playerVel = transform.parent.transform.GetComponent<Rigidbody>().velocity;
            var playerAngVel = transform.parent.transform.GetComponent<Rigidbody>().angularVelocity;
            playerVel = Vector3.zero;
            playerAngVel = Vector3.zero;
            playerPos.y = 0;
            transform.parent.transform.position = playerPos;
            transform.parent.transform.GetComponent<Rigidbody>().velocity = playerVel;
            transform.parent.transform.GetComponent<Rigidbody>().angularVelocity = playerAngVel;
            GetComponentInParent<PlayerController>().playable = false;
            doingStuff = true;
            npc.NpcLook(transform.position);
            if (npc.state != NPCController.State.IDLE)
            {
                lastStateWhenAlreadyIdle = npc.lastKnownState;
                npc.lastKnownState = NPCController.State.IDLE;
            }
            else
                npc.lastKnownState = npc.state;
            npc.state = NPCController.State.IDLE;
            transform.parent.GetComponent<Rigidbody>().constraints = RigidbodyConstraints.FreezeAll;
            obj.GetComponent<Rigidbody>().constraints = RigidbodyConstraints.FreezeAll;
            originalPos = obj.transform.position;
            originalRot = obj.transform.rotation;
            obj.transform.position = convoPos.transform.position;
            obj.transform.rotation = convoPos.transform.rotation;
            if (stats.NPCName == "maleChildNPC" && TalkBox.GetComponent<RectTransform>().localPosition.y < 0)
            {
                TalkBox.GetComponent<RectTransform>().localPosition = new Vector3(0, 130, 0);
            }
            else if (stats.NPCName == "adultMaleNPC" && TalkBox.GetComponent<RectTransform>().localPosition.y > 0)
            {
                TalkBox.GetComponent<RectTransform>().localPosition = new Vector3(0, -130, 0);
            }
            TalkBox.SetActive(true);
        }
        else
        {
            transform.parent.GetComponent<Rigidbody>().constraints = (RigidbodyConstraints)80;
            obj.GetComponent<Rigidbody>().constraints = (RigidbodyConstraints)80;
            if (lastStateWhenAlreadyIdle != null)
                npc.state = lastStateWhenAlreadyIdle;
            else
                npc.state = npc.lastKnownState;
            doingStuff= false;
            GetComponentInParent<PlayerController>().playable = true;
            obj.transform.position = originalPos;
            obj.transform.rotation = originalRot;
            TalkBox.SetActive(false);

        }
        transform.parent.GetComponentInChildren<NPCConversation>().ToggleCameras();
        
    }
    

   /*
    //Changed to a zelda-style camera
     void TalkAdult(GameObject obj)
    {
        var objTran = obj.transform;
        originalRot = objTran.rotation;
        script.transform.position = main.transform.position;
        script.transform.rotation = main.transform.rotation;        
        transform.parent.GetComponentInChildren<SkinnedMeshRenderer>().enabled = !transform.parent.GetComponentInChildren<SkinnedMeshRenderer>().enabled;
        TAGDGame.Pause(main, script, obj, transform.parent.gameObject);        
        var lookPos = transform.parent.transform.position;
        lookPos.y = objTran.position.y;
        var dir = lookPos - objTran.position;
        dir.y = 0;
        if (dir != Vector3.zero)
        {
            var turn = Quaternion.LookRotation(dir,objTran.up);
            objTran.rotation = Quaternion.Slerp(objTran.rotation, turn, 1);
        }
        
    }
    */
    
}
