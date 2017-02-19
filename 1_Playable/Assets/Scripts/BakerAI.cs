using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BakerAI : MonoBehaviour {

    public Vector3 spawn;
    public int speed;
    
    public GameObject player;//AKA object to chase

    public float giveUpTimer;//How long until gives up

    private Collider playerCollider;

    private bool chasing = false;//Is in chase state
    private bool inSight = false;//Can see the player (raycast)
    private bool wander = false;//Looking for spawn (obstruction in the way)

    private Rigidbody rb;
    private bool first = true;//Makes sure chase is set once
    private float lastTimeSeen = 0;//Last time player is seen
    private Vector3 lastPlaceSeen;//Last place player is seen

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
        chasing = true;
        Debug.Log("Im gonna get you kid!");
    }

    void FixedUpdate() {
        //CHASING
        if (chasing){
            var playerChest = new Vector3(player.transform.position.x, player.transform.position.y + 1.5f, player.transform.position.z);
            var bakerHead = new Vector3(transform.position.x, transform.position.y + 2.5f, transform.position.z);

            Vector3 movement = playerChest - bakerHead;
            float distance = movement.magnitude;
            //Casts ray from Baker to Player
            RaycastHit hit;//object hit by ray
            Physics.Raycast(bakerHead, movement, out hit, distance+10);
            Debug.DrawRay(bakerHead, movement, Color.red);
            //if ray hits Player, moves at [speed] towards 'player' 
            if (hit.collider == playerCollider){
                lastTimeSeen = Time.time;
                lastPlaceSeen = playerChest;
                var mov = new Vector3(movement.x, 0f, movement.z);
                //rb.AddForce(mov / mov.magnitude * speed);
                rb.velocity = mov.normalized * speed * Time.deltaTime;
                transform.LookAt(playerChest);
                Debug.Log("I see you!");
            }
            //if !Player, sets 'chase' to false; stop moving
            else{
                
                Debug.Log("I dont see you!");
                //if giveUpTimer passes up, no chasing
                if (lastTimeSeen + giveUpTimer < Time.time){
                    chasing = false;
                    Debug.Log("I'm giving up!");
                }
                //else move to last place player was seen
                else{
                    movement = lastPlaceSeen - transform.position;
                    var mov = new Vector3(movement.x, 0f, movement.z);
                    rb.velocity = mov.normalized * speed * Time.deltaTime;
                    transform.LookAt(playerChest);
                }
                
            }
        }
        //If not chasing: Walk back to spawn
        else if (Vector3.Distance(transform.position, spawn) > 0.1f)
        {
            //Calculate direction to move
            Vector3 movement = spawn - transform.position;
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
            }
            else if (wander)
            {
                wander = false;
                rb.velocity = Vector3.zero;
            }

            //Move
            //rb.AddForce(movement / movement.magnitude * speed);

            
        }
        else
        {
            rb.velocity = Vector3.zero;
        }
    }
}
