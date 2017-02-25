using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NodeRange : MonoBehaviour {

    private NodeController nodeCtrl;

    void Start()
    {
        nodeCtrl = GetComponentInParent<NodeController>();
    }
    void OnTriggerStay(Collider col)
    {
        if (nodeCtrl != null && col.tag == "Player" && !nodeCtrl.activeNodeCtrl)
        {
            Debug.Log("entered node range");
            nodeCtrl.activateNodeCtrl = true;
            nodeCtrl.generateMoreNPC = true;
        }
    }

    void OnTriggerExit(Collider col)
    {
        if (col.tag == "Player" && nodeCtrl.activeNodeCtrl)
        {
            nodeCtrl.activeNodeCtrl = false;
            Debug.Log("node deactivated");
        }
    }
}
