using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPC : MonoBehaviour
{
    enum directions {north, east, south, west};
    public Transform currentNode;
    public int currentNodeIndex;
    public NodeController nodeCtrl;
    public Transform nextNode;
    public int nextNodeIndex;

    public bool enableDecision = true;


    public float minWalkSpeed = 4f;
    public float maxWalkSpeed = 8f;
    public float turningSpeed = 4f;
    private float walkingSpeed;

    public Transform eyes;


    public bool isPatrol = true;
    public bool reverseDir = false;

    public int lastNodeIndex;
    private bool startLooking = true;
    private bool obstacleDetected = false;

    // Use this for initialization

    void Start()
    {
        // randomize stats
        walkingSpeed = Random.Range(minWalkSpeed, maxWalkSpeed);
        lastNodeIndex = nodeCtrl.nodes.Length - 1;
        // randomize direction of block walking
        int randomDir = Random.Range(0, 2);
        if (randomDir == 1)
        {
            reverseDir = true;
            if (currentNodeIndex == 0)
            {
                nextNodeIndex = lastNodeIndex;
                nextNode = nodeCtrl.nodes[lastNodeIndex].transform;
            }
            else
            {
                nextNodeIndex = currentNodeIndex - 1;
                nextNode = nodeCtrl.nodes[nextNodeIndex].transform;
                
            }
        }
        else
        {
            if (currentNodeIndex != lastNodeIndex)
            {
                nextNodeIndex = currentNodeIndex + 1;
                nextNode = nodeCtrl.nodes[nextNodeIndex].transform;
            }
            else
            {
                nextNodeIndex = 0;
                nextNode = nodeCtrl.nodes[0].transform;
            }
        }
        }
    void Awake()
    {
        isPatrol = true;
    }

    // Update is called once per frame
    void Update()
    {

        if (isPatrol)
        {
            if (startLooking)
            {
                StartCoroutine(lookForObstacles());
                Vector3 fwd = transform.TransformDirection(Vector3.forward);
                RaycastHit hit;
                if (Physics.SphereCast(transform.position, 4*transform.localScale.z, fwd, out hit, 20f))
                {
                    if (hit.transform.gameObject.layer == 8)
                    {
                        Debug.DrawLine(transform.position, hit.point, Color.red, 1f);
                        obstacleDetected = true;                    
                    }
                }
                else
                    obstacleDetected = false;
            }
            if (!obstacleDetected)
            {
                float step = walkingSpeed * Time.deltaTime;
                float turnStep = turningSpeed * Time.deltaTime;
                Vector3 targetDir = nextNode.position - transform.position;
                targetDir.y = 0;
                var rotation = Quaternion.LookRotation(targetDir);
                transform.rotation = Quaternion.Slerp(transform.rotation, rotation, turnStep);
                transform.position = Vector3.MoveTowards(transform.position, nextNode.position, step);
            }else
            {
                float step = walkingSpeed * Time.deltaTime;
                float turnStep = turningSpeed * Time.deltaTime;
                Vector3 targetDir = nextNode.position - transform.position;
                targetDir.y = 0;
                var rotation = Quaternion.LookRotation(targetDir);
                transform.rotation = Quaternion.Slerp(transform.rotation, rotation, turnStep);
                transform.position = Vector3.MoveTowards(transform.position, nextNode.position, step);
            }
        }
    }

    public void obstacleAvoidance(Transform obs)
    {
        obstacleDetected = true;
    }

    public void decisionMaking()
    {
        int decision = Random.Range(0, 11);

        // use inspector on NPC prefab to enable or disable decision making
        if (!enableDecision)
            decision = -1; 
       
        switch (decision)
        {
            case 0:
                crossStreet(decision);
                break;
            case 1:
                // cross street in a different direction
                crossStreet(decision);
                break;
            case 2:
                // change direction
                if (reverseDir)
                    reverseDir = false;
                else
                    reverseDir = true;
                break;
            case 3:
                // hangs out for five seconds
                StartCoroutine(chillOut(Random.Range(3f, 8f)));
                break;
            case 4:case 5:case 6:
            case 7:case 8:case 9:
            case 10:
                // do nothing and stay on current path
                break;
            default:
                // shouldn't be here
                break;
        }
    }

    IEnumerator chillOut(float duration)
    {
        float tempSpeed = walkingSpeed;
        walkingSpeed = 0f;
        yield return new WaitForSeconds(duration);
        walkingSpeed = tempSpeed;
    }

    void crossStreet(int whichWay)
    {
        switch (nextNodeIndex)
        {
            case 1:
                if (whichWay == 1)
                {
                    changeNodeCtrl(directions.north);//go north
                    nextNodeIndex = 3;                   
                }
                else
                {
                    changeNodeCtrl(directions.east);//go east
                    nextNodeIndex = 7;
                }
                break;
            case 3:
                if (whichWay == 1)
                {
                    changeNodeCtrl(directions.south); //go south
                    nextNodeIndex = 1;
                }
                else
                {
                    changeNodeCtrl(directions.east); //go east
                    nextNodeIndex = 5;
                }
                break;
            case 5:
                if (whichWay == 1)
                {
                    changeNodeCtrl(directions.south); //go south
                    nextNodeIndex = 7;
                }
                else
                {
                    changeNodeCtrl(directions.west); //go west
                    nextNodeIndex = 3;
                }
                break;
            case 7:
                if (whichWay == 1)
                {
                    changeNodeCtrl(directions.north); //go north
                    nextNodeIndex = 5;
                }
                else
                {
                    changeNodeCtrl(directions.west); //go west
                    nextNodeIndex = 1;
                }
                break;
            default:
                break;
        }
        nextNode = nodeCtrl.nodes[nextNodeIndex].transform;
    }

    void changeNodeCtrl(directions dir)
    {
        int currentIndex = System.Array.IndexOf(DumbCityGenerator.nodeCtrlArray, nodeCtrl);
        int blocksWide = (int)Mathf.Sqrt(DumbCityGenerator.nodeCtrlArray.Length);
        
        switch (dir)
        {
            case directions.north:
                if (validDirection(dir, currentIndex))
                    nodeCtrl = DumbCityGenerator.nodeCtrlArray[currentIndex - 1];
                break;
            case directions.east:
                if (validDirection(dir, currentIndex))
                    nodeCtrl = DumbCityGenerator.nodeCtrlArray[currentIndex - blocksWide];
                break;
            case directions.south:
                if (validDirection(dir, currentIndex))
                    nodeCtrl = DumbCityGenerator.nodeCtrlArray[currentIndex + 1];
                break;
            case directions.west:
                if (validDirection(dir, currentIndex))
                    nodeCtrl = DumbCityGenerator.nodeCtrlArray[currentIndex + blocksWide];
                break;
            default: break;
        }
        transform.parent = nodeCtrl.nodeNPCs.transform;

    }   
    // checks if adjacent nodes are valid nodes
    bool validDirection(directions dir, int index)
    {
        int blocksWide = (int)Mathf.Sqrt(DumbCityGenerator.nodeCtrlArray.Length);
        
        switch (dir)
        {
            case directions.north:
                if (index % blocksWide == 0)
                    return false;
                else
                    return true;
            case directions.east:
                if (index < blocksWide)
                    return false;
                else
                    return true;
            case directions.south:
                if (index % blocksWide == blocksWide - 1)
                    return false;
                else
                    return true;
            case directions.west:
                if (index >= Mathf.Pow(blocksWide,2)-blocksWide)
                    return false;
                else
                    return true;
        }
        return false;
    }

    IEnumerator lookForObstacles()
    {
        startLooking = false;
        yield return new WaitForSeconds(0f);
        startLooking = true;
    }
}
