using UnityEngine;
using System.Collections;

public class Player : MonoBehaviour
{


    public float CLICK_DELAY = 0.2f;

    public int maxStamina = 10;
    public float staminaRecovery = 1f;
    private int stamina = 10;

    public float rollDuration = 0.6f;
    public float rollSpeed = 2.0f;

    private float didAThing;

    public float speed;
    private float speedMod = 1f;

    public bool walking = false;
    public bool running = false;
    public bool sprinting = false;
    public bool jumpBack = false;
    public bool rolling = false;
    public bool hiding = false;
    public bool sneaking = false;
    

    private bool canRoll = false;
    private float rollDownTime;
    public float rollStartTime;
    private float sprintStart;

    private Rigidbody rb;

    public float moveHorizontal = 0.0f;
    public float moveVertical = 0.0f;

    private Vector3 lookVector;

    private GameObject controller;

    private Animator anim;
    
    public float lookMagnitude;

    // Use this for initialization
    void Start()
    {
        anim = GetComponentInChildren<Animator>();
        rb = GetComponent<Rigidbody>();
    }

    // Update is called once per frame
    void Update()
    {
        moveHorizontal = Input.GetAxis("Horizontal");
        moveVertical = Input.GetAxis("Vertical");

        var speedVector = new Vector3(moveHorizontal, 0.0f, moveVertical);
		lookVector = transform.forward;

		lookMagnitude = speedVector.magnitude;
        walking = false;
        running = false;
        sprinting = false;
        jumpBack = false;
        rolling = false;
        hiding = false;
        sneaking = false;


        if(lookMagnitude > 0.1f)
        {
            if (lookMagnitude > 0.5f)
            {
                running = true;
                
            }
            else
            {
                walking = true;
            }
        }


        anim.SetBool("walking", walking);
        anim.SetBool("running", running);
        //anim.SetBool("sprinting", sprinting);
        //anim.SetBool("jumpBack", jumpBack);
        //anim.SetBool("rolling", rolling);
    }

   
    void FixedUpdate()
    {

        rb.angularVelocity = Vector3.zero;

        var directionVector = new Vector3(moveHorizontal, 0.0f, moveVertical);
            directionVector.Normalize();

        // set the direction vector relative to the camera
        var offset = transform.position - Camera.main.transform.position;
        offset.Normalize();
        offset *= directionVector.magnitude;

        directionVector += offset;

        directionVector.Normalize();
            

        /*
            if (anim)
            {
                //Debug.Log(directionVector.magnitude);
                if (directionVector.magnitude > 0.5)
                    SetAnims("bool", "running", true);
                else
                {
                    if (rolling)
                    {
                        directionVector = lookVector;
                    }
                    else
                        SetAnims("bool", "running", false);
                }
            }
            */

		// = lookVector;
		var vel = (directionVector * speed * speedMod);
        rb.velocity = vel;


        // set rotation to direction of intended movement
        //if (lookVector.magnitude > 0.1f)
           //     transform.rotation = Quaternion.LookRotation(lookVector);

            //rb.rotation = Quaternion.LookRotation(Vector3.Lerp(transform.rotation.eulerAngles, directionVector, 1f));
        
    }
}
