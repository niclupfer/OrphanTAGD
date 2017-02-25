using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NodeRange : MonoBehaviour {

    private NodeController nodeCtrl;
    private bool startOnly = true;

    void Start()
    {
        nodeCtrl = GetComponentInParent<NodeController>();
    }

    // does this to detect for starting only
    void OnTriggerStay(Collider col)
    {
        if (nodeCtrl != null && col.tag == "Player" && !nodeCtrl.activeNodeCtrl && startOnly)
        {
            startOnly = false;
       //     Debug.Log("Starting nodes created");
            nodeCtrl.activateNodeCtrl = true;
            nodeCtrl.generateMoreNPC = true;
        }
    }

    void OnTriggerEnter(Collider col)
    {
        if (nodeCtrl != null && col.tag == "Player" && !nodeCtrl.activeNodeCtrl)
        {
            startOnly = false;
        //    Debug.Log("entered node range");
            nodeCtrl.activateNodeCtrl = true;
            nodeCtrl.generateMoreNPC = true;
        }
    }

    void OnTriggerExit(Collider col)
    {
        if (col.tag == "Player" && nodeCtrl.activeNodeCtrl)
        {
            nodeCtrl.activeNodeCtrl = false;
      //      Debug.Log("node deactivated");
        }
    }
}
