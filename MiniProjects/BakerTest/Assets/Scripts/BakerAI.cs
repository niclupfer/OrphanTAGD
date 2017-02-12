using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BakerAI : MonoBehaviour {
    public Vector3 spawn;
    public int speed;
    public GameObject bread;//Bread being guarded
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

	void Start () {
        rb = GetComponent<Rigidbody>();
        playerCollider = player.GetComponent<Collider>();
	}
	
	void Update () {
        //bool first is used to make it so this only changes chasing when bread is taken
        if (first && !bread.activeSelf){
            first = false;
            chasing = true;
        }
	}

    void FixedUpdate() {
        //CHASING
        if (chasing){
            Vector3 movement = player.transform.position - transform.position;
            float distance = movement.magnitude;
            //Casts ray from Baker to Player
            RaycastHit hit;//object hit by ray
            Physics.Raycast(transform.position, movement, out hit, distance);
            //if ray hits Player, moves at [speed] towards 'player' 
            if (hit.collider == playerCollider){
                lastTimeSeen = Time.time;
                lastPlaceSeen = player.transform.position;
                rb.AddForce(movement / movement.magnitude * speed);
            }
            //if !Player, sets 'chase' to false; stop moving
            else{
                //if giveUpTimer passes up, no chasing
                if (Time.time - lastTimeSeen > giveUpTimer){
                    chasing = false;
                }
                //else move to last place player was seen
                else{
                    movement = lastPlaceSeen - transform.position;
                    rb.AddForce(movement / movement.magnitude * speed);
                }
            }
        }
        //If not chasing: Walk back to spawn
        else if (Vector3.Distance(transform.position, spawn) > 0.001f){
            //Calculate direction to move
            Vector3 movement = spawn - transform.position;
            bool isHit = Physics.Raycast(transform.position, movement, Vector3.Distance(transform.position, spawn));
            //Case: wall blocking path -> walk around
            if (isHit){
                wander = true;
                //2 ways to go around; occasionally switch direction to avoid dead end
                int direction = (Time.time % 40) > 20 ? -1 : 1;
                movement = new Vector3(movement.z * direction, 0, -movement.x * direction);
            }
            else if (wander){
                wander = false;
                rb.velocity = Vector3.zero;
            }
            //Move
            rb.AddForce(movement / movement.magnitude * speed);
        }
        else if (Vector3.Distance(transform.position, spawn) < 0.01f){
            rb.velocity = Vector3.zero;
        }
    }
}
