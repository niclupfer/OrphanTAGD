using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NodeNPC : MonoBehaviour {
    
    void OnTriggerEnter(Collider col)
    {
        if (col.tag == "NPC")
        {
            NPCController npc = col.GetComponent<NPCController>();
            if (this.transform == npc.nextNode)
            {
                npc.currentNode = this.transform;
                npc.currentNodeIndex = npc.nextNodeIndex;
                npc.DecisionMaking();
                if (npc.nextNodeIndex == npc.currentNodeIndex)
                {
                    if (!npc.reverseDir)        //clockwise
                    {
                        if (npc.nextNodeIndex == npc.lastNodeIndex)
                            npc.nextNodeIndex = 0;
                        else
                            // increment if isn't the last index
                            ++npc.nextNodeIndex;
                    }
                    else                        //counterclockwise
                    {
                        if (npc.nextNodeIndex == 0)      //checks if first index
                            npc.nextNodeIndex = npc.lastNodeIndex;
                        else
                            //otherwise subtract
                            --npc.nextNodeIndex;
                    }
                    npc.nextNode = npc.nodeCtrl.nodes[npc.nextNodeIndex].transform;
                    npc.currDestination = npc.nextNode.position;
                }
            }
        }
    }
}
