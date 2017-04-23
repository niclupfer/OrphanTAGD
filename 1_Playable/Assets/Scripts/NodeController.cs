using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NodeController : MonoBehaviour {

    public NodeNPC[] nodes;
    public NodeController[] adjNodeCtrls;
    private GameObject NPC;
    public int currentIndex;
    private DumbCityGenerator theCity;

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
        theCity = GameObject.Find("TheCity").GetComponent<DumbCityGenerator>();
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
            NPCController[] killNPCs = nodeNPCs.GetComponentsInChildren<NPCController>();

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
                NPC = theCity.randomSpawnNPC[Random.Range(0, theCity.randomSpawnNPC.Length)];
                Vector3 nodePos = new Vector3(nodes[i].transform.position.x, nodes[i].transform.position.y, nodes[i].transform.position.z);
                var createNPC = Instantiate(NPC, nodePos, nodes[i].transform.rotation);
                createNPC.gameObject.transform.parent = nodeNPCs.transform;
                createNPC.GetComponent<NPCController>().currentNode = nodes[i].transform;
                createNPC.GetComponent<NPCController>().nodeCtrl = this;
                createNPC.GetComponent<NPCController>().currentNodeIndex = i;
                createNPC.GetComponent<NPCController>().state = global::NPCController.State.PATROL;
                createNPC.GetComponent<NPCStats>().NPCName = NPC.name;
            }
            generateMoreNPC = false;
        }
    }
}
