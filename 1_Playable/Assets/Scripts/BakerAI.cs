using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BakerAI : MonoBehaviour {

    public Vector3 spawn;
    public int speed;
    
    public GameObject player;//AKA object to chase

    public float giveUpTimer;//How long until gives up

    private Collider playerCollider;

    public bool chasing = false;//Is in chase state
    private bool inSight = false;//Can see the player (raycast)
    public bool atShop = true;//Can see the player (raycast)
    private bool wander = false;//Looking for spawn (obstruction in the way)
    public bool movingToSpawn = true;

    private Rigidbody rb;
    private bool first = true;//Makes sure chase is set once
    private float lastTimeSeen = 0;//Last time player is seen
    private Vector3 lastPlaceSeen;//Last place player is seen

    public Vector3 lastPosition;
    public float stuckAmount = 0.1f;

	void Start ()
    {
        spawn = transform.position;
        rb = GetComponent<Rigidbody>();
        player = GameObject.Find("Player");
        playerCollider = player.GetComponent<CapsuleCollider>();
	}
	
	void Update ()
    {
        /*
        //bool first is used to make it so this only changes chasing when bread is taken
        if (first && !bread.activeSelf){
            first = false;
            chasing = true;
        }
        */
	}

    public void StartChase()
    {
        if (atShop)
        {
            chasing = true;
            lastPosition = transform.position;
            atShop = false;
            Debug.Log("Im gonna get you kid!");
            lastTimeSeen = Time.time;
        }
    }

    void FixedUpdate()
    {
        //CHASING
        if (chasing)
        {
            var playerChest = new Vector3(player.transform.position.x, player.transform.position.y + 1.5f, player.transform.position.z);
            var bakerHead = new Vector3(transform.position.x, transform.position.y + 2.5f, transform.position.z);

            Vector3 movement = playerChest - bakerHead;
            float distance = movement.magnitude;                      
                

            //Casts ray from Baker to Player
            RaycastHit hit;//object hit by ray
            Physics.Raycast(bakerHead, movement, out hit, distance+10);
            Debug.DrawRay(bakerHead, movement, Color.red);
            //if ray hits Player, moves at [speed] towards 'player'
            if (hit.collider == playerCollider)
            {
                lastTimeSeen = Time.time;
                lastPlaceSeen = playerChest;

                movement = playerChest - bakerHead;
                if ((transform.position - lastPosition).magnitude < stuckAmount)
                {
                    // move left or right
                    var rightPos = transform.position + (transform.right * 5);
                    var rightDist = (playerChest - rightPos).magnitude;

                    var leftPos = transform.position + (transform.right * -5);
                    var leftDist = (playerChest - leftPos).magnitude;
                    if (leftDist < rightDist)
                    {
                        movement = leftPos - bakerHead;
                    }
                    else
                        movement = rightPos - bakerHead;
                }

                var mov = new Vector3(movement.x, 0f, movement.z);
                //rb.AddForce(mov / mov.magnitude * speed);
                rb.velocity = mov.normalized * speed * Time.deltaTime;
                transform.LookAt(new Vector3(player.transform.position.x, 0f, player.transform.position.z));
                Debug.Log("I see you!");
            }
            //if !Player, sets 'chase' to false; stop moving
            else
            {                
                //if giveUpTimer passes up, no chasing
                if (lastTimeSeen + giveUpTimer < Time.time)
                {
                    chasing = false;
                    Debug.Log("I'm giving up!");
                }
                //else move to last place player was seen
                else
                {
                    Debug.Log("I dont see you but im coming!");
                    movement = lastPlaceSeen - transform.position;

                    if ((transform.position - lastPosition).magnitude < stuckAmount)
                    {
                        // move left or right
                        var rightPos = transform.position + (transform.right * 5);
                        var rightDist = (lastPlaceSeen - rightPos).magnitude;

                        var leftPos = transform.position + (transform.right * -5);
                        var leftDist = (lastPlaceSeen - leftPos).magnitude;
                        if (leftDist < rightDist)
                        {
                            movement = leftPos - bakerHead;
                        }
                        else
                            movement = rightPos - bakerHead;
                    }

                    var mov = new Vector3(movement.x, 0f, movement.z);
                    rb.velocity = mov.normalized * speed * Time.deltaTime;
                    transform.LookAt(new Vector3(lastPlaceSeen.x, 0f, lastPlaceSeen.z));
                }                
            }

            //lastDistToTarget = movement.magnitude;
        }
        //If not chasing: Walk back to spawn
        else if (Vector3.Distance(transform.position, spawn) > 0.5f)
        {            
            //Calculate direction to move
            Vector3 movement = spawn - transform.position;

            if ((transform.position - lastPosition).magnitude < stuckAmount)
            {
                // move left or right
                var rightPos = transform.position + (transform.right * 5);
                var rightDist = (spawn - rightPos).magnitude;

                var leftPos = transform.position + (transform.right * -5);
                var leftDist = (spawn - leftPos).magnitude;
                if (leftDist < rightDist)
                {
                    movement = leftPos - transform.position;
                }
                else
                    movement = rightPos - transform.position;
            }

            //lastDistToTarget = movement.magnitude;

            rb.velocity = movement.normalized * speed * Time.deltaTime;
            //transform.LookAt(movement);
            transform.LookAt(new Vector3(spawn.x, spawn.y, spawn.z));
            movingToSpawn = true;
            
            /*
            bool isHit = Physics.Raycast(transform.position, movement, Vector3.Distance(transform.position, spawn));
            
            //Case: wall blocking path -> walk around
            if (isHit)
            {
                wander = true;
                //2 ways to go around; occasionally switch direction to avoid dead end
                int direction = (Time.time % 40) > 20 ? -1 : 1;
                movement = new Vector3(movement.z * direction, 0, -movement.x * direction);
                //rb.velocity = (movement / movement.magnitude) * speed;
                rb.velocity = movement.normalized * speed * Time.deltaTime;
                //transform.LookAt(movement);
                transform.LookAt(new Vector3(spawn.x, 0f, spawn.z));
            }
            else if (wander)
            {
                wander = false;
                rb.velocity = Vector3.zero;
            }
            */

            //Move
            //rb.AddForce(movement / movement.magnitude * speed);

            
        }
        else
        {
            movingToSpawn = false;
            atShop = true;
            rb.velocity = Vector3.zero;
        }

        lastPosition = transform.position;
    }
}
