using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPCController : MonoBehaviour
{
    // CONSTANTS
    // Different states of NPCs
    // IDLE: Stand still
    // PATROL: Patrol around city block to block (Random NPCs)
    // FREEROAM: Wander without being tied to a node controller (use for special NPCs)
    // CHASE: Chase character state

    public enum State { IDLE, PATROL, FREEROAM, CHASE };
    enum directions { north, east, south, west };


    [HideInInspector]
    public Transform currentNode;

    [HideInInspector]
    public bool hasBeenIdle = false;
    [HideInInspector]
    public int currentNodeIndex;
    [HideInInspector]
    public NodeController nodeCtrl;
    [HideInInspector]
    public Transform nextNode;

    [HideInInspector]
    public int nextNodeIndex;

    public Transform currDest;
    [HideInInspector]
    public Vector3 currDestination;
    public bool readyToLook = true;

    public bool enableDecision = true;
    
    public float minWalkSpeed = 4f;
    public float maxWalkSpeed = 12f;
    public float turningSpeed = 10f;
    [HideInInspector]
    public float walkingSpeed;
    [HideInInspector]
    public float tempSpeed;
    private Vector3 idleAhead;

    [HideInInspector]
    public bool reverseDir = false;

    [HideInInspector]
    public int lastNodeIndex;
    public bool obstacleDetected = false;
    private bool crossedStreet = false;
    private Animator anim;

    [HideInInspector]
    public bool chilling = false;

    public bool doingStuff = false;
    private bool waitingCR = false;
    
    public State state = State.IDLE;
    public State lastKnownState = State.IDLE;

    // Use this for initialization

    void Start()
    {
        // randomize stats
        
        walkingSpeed = Random.Range(minWalkSpeed, maxWalkSpeed);
        anim = GetComponent<Animator>();
        if (state != State.FREEROAM)
        {
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
            currDestination = nextNode.position;
        }
        if (state == State.FREEROAM)
        {
            var thisPos = transform.position;
            var fwd = transform.forward;
            var ahead = thisPos + fwd * 8;
            ahead.y = 0;
            if (currDest == null)
                currDestination = ahead;
            else
                currDestination = currDest.position;
        }
            
    }

    void Awake()
    {
    }

    // Update is called once per frame

    void Update()
    {
        if (!doingStuff)
        {
            if (state == State.PATROL)
            {
                if (hasBeenIdle)
                    QuitBeingLazy();
                PatrolBlocks();
            }
            if (state == State.FREEROAM)
            {
                if (hasBeenIdle)
                    QuitBeingLazy();
                RoamCity();
            }
            if (state == State.IDLE)
            {
                if (!hasBeenIdle)
                    GoIdle();
                IdleWild();
            }
        }else { Debug.Log(transform.name + " doing stuff" + GetComponent<Rigidbody>().velocity); }
    }
    //  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    //      STATE CONTROLLED FUNCTIONS
    //  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    void GoIdle()
    {
        tempSpeed = walkingSpeed;
        walkingSpeed = 0;
        var thisPos = transform.position;
        var fwd = transform.forward;
        idleAhead = thisPos + fwd * 8;
        idleAhead.y = 0;
        hasBeenIdle = true;
        NpcMove(transform.position);
        NpcLook(idleAhead);
        GetComponent<Rigidbody>().constraints = RigidbodyConstraints.FreezeRotation;
    }

    void IdleWild()
    {
        
    }

    void QuitBeingLazy()
    {
        walkingSpeed = tempSpeed;
        tempSpeed = 0;
        hasBeenIdle = false;
        GetComponent<Rigidbody>().constraints = ~RigidbodyConstraints.FreezeRotationY;
    }

    void PatrolBlocks()
    {
        if (!obstacleDetected)
        {
            NpcLook(currDestination);
            NpcMove(currDestination);
        }
        else
        {
            var thisPos = transform.position;
            var fwd = transform.forward;
            var ahead = thisPos + fwd * 8;
            ahead.y = 0;
            NpcLook(ahead);
            NpcMove(ahead);
        }
    }

    void RoamCity()
    {
        if (!obstacleDetected)
        {
            
            NpcLook(currDestination);            
            NpcMove(currDestination);
        }
        else
        {
            var thisPos = transform.position;
            var fwd = transform.forward;
            var ahead = thisPos + fwd * 8;
            ahead.y = 0;
            NpcLook(ahead);
            NpcMove(ahead);
        }
    }

    //  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    //          MOVEMENT FUNCTIONS
    //  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    public void NpcMove(Vector3 destination)
    {
        float step = walkingSpeed * Time.deltaTime;
        destination.y = transform.position.y;
        transform.position = Vector3.MoveTowards(transform.position, destination, step);
        anim.SetFloat("Speed", Mathf.Abs(walkingSpeed));
    }

    public void NpcLook(Vector3 destination)
    {
        float turnStep = turningSpeed * Time.deltaTime;
        destination.y = transform.position.y;
        var thisPos = transform.position;        
        Vector3 dir = destination - thisPos;
        if (dir != Vector3.zero)
        {
            var turn = Quaternion.LookRotation(dir);
            transform.rotation = Quaternion.Slerp(transform.rotation, turn, turnStep);
        }
    }
    
    // veer out of the way of obstacles
    public void Veer(float turnDirection)
    {
        float turnStep = turningSpeed * Time.deltaTime;
        if (transform.forward != Vector3.zero)
        {
            Quaternion turn = Quaternion.LookRotation(transform.forward);
            turn *= Quaternion.Euler(0, turnDirection, 0);
            transform.rotation = Quaternion.Slerp(transform.rotation, turn, turnStep);
        }
    }
    // makes dude hang out
    public IEnumerator ChillOut(float duration)
    {
        lastKnownState = state;
        state = State.IDLE;
        yield return new WaitForSeconds(duration);
        state = lastKnownState;
    }

    //  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    //      DECISION MAKING CASES AT NODE
    //  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    public void DecisionMaking()
    {
        int decision = Random.Range(0, 11);

        // use inspector on NPC prefab to enable or disable decision making
        // simply add a case if none are available and increase random's range
        // if there are empty cases, choose any and add code, but make sure to break
        if (!enableDecision)
            decision = -1; 
       
        switch (decision)
        {
            case 0:
                if (!crossedStreet)
                    crossStreet(decision);
                else
                    crossedStreet = true;
                break;
            case 1:
                // cross street in a different direction
                if (!crossedStreet)
                    crossStreet(decision);
                else
                    crossedStreet = true;
                break;
            case 2:
                // change direction
                StartCoroutine(ChillOut(1.5f));
                if (reverseDir)
                    reverseDir = false;
                else
                    reverseDir = true;
                break;
            case 3:
                // hangs out for 3-8 secs
                StartCoroutine(ChillOut(Random.Range(3f, 8f)));
                break;
            case 4:case 5:case 6:
            case 7:case 8:case 9:
            case 10:
                // do nothing and stay on current path
                break;
            default:
                // for disabling purposes
                break;
        }        
    }    

    //  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    //  NODE CONTROL AND DECISION FUNCTIONS
    //  ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    void crossStreet(int whichWay)
    {
        crossedStreet = true;
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
        currDestination = nextNode.position;
    }

    // CHANGE NODE CONTROLLER USED TO CROSS STREET AND BE CONTROLLED BY THAT BLOCK'S CONTROLLER
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

    IEnumerator GenericWait (float time)
    {
        waitingCR = true;
        yield return new WaitForSeconds(time);
        waitingCR = false;
    }
}
