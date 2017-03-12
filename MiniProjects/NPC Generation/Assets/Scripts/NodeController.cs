using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NodeController : MonoBehaviour {

    public NodeNPC[] nodes;
    public NodeController[] adjNodeCtrls;
    public GameObject NPC;
    public int currentIndex;

    public bool activateNodeCtrl = false;
    public bool activeNodeCtrl = false;
    public bool generateMoreNPC = true;

    private int numToGen;
    public int maxGenNPC;

    public GameObject nodeNPCs;
    // Use this for initialization
    void Start()
    {

    }

    void Awake()
    {
        nodes = GetComponentsInChildren<NodeNPC>();
        maxGenNPC = numToGen = nodes.Length;
    
    }

    // Update is called once per frame
    void Update () {
        if (activateNodeCtrl && !activeNodeCtrl)
        {
            activateNodeCtrl = false;
            activeNodeCtrl = true;
        }
        if (activeNodeCtrl)
        {
            activeNode(numToGen);
        }
        if (!activeNodeCtrl)
        {
            NPC[] killNPCs = nodeNPCs.GetComponentsInChildren<NPC>();

            foreach (var item in killNPCs)
            {
                Destroy(item.gameObject);
            }
          
        }
        if (nodeNPCs.transform.childCount < 3)
        {
            generateMoreNPC = true;
            numToGen = maxGenNPC - 2;
        }

	}

    void activeNode(int numToGen)
    {
        if (generateMoreNPC)
        {
       //     Debug.Log("Generating " + numToGen + "NPCs.");
            nodeNPCs.transform.parent = transform;
            for (int i = 0; i < numToGen; ++i)
            {
                Vector3 nodePos = new Vector3(nodes[i].transform.position.x, nodes[i].transform.position.y, nodes[i].transform.position.z);
                var createNPC = Instantiate(NPC, nodePos, nodes[i].transform.rotation);
                createNPC.gameObject.transform.parent = nodeNPCs.transform;
                createNPC.GetComponent<NPC>().currentNode = nodes[i].transform;
                createNPC.GetComponent<NPC>().nodeCtrl = this;
                createNPC.GetComponent<NPC>().currentNodeIndex = i;
                createNPC.GetComponent<NPC>().state = global::NPC.State.PATROL;
            }
            generateMoreNPC = false;
        }
    }
}
