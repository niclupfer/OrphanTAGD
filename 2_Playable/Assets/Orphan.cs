using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Orphan : MonoBehaviour {
    
    private Rigidbody rb;
    private Animator anim;

    public float walkSpeed;
    public float runSpeed;
    public float sprintSpeed;

    public float jumpPower;
    public ForceMode forceMode;

    float moveSideways = 0.0f;
    float moveForward = 0.0f;

    LayerMask collisionMask;
    BoxCollider col;

    bool grounded = false;
    bool semiGrounded = false;

    bool walking = false;
    bool sprinting = false;

    void Start()
    {
        anim = GetComponentInChildren<Animator>();
        rb = GetComponent<Rigidbody>();
        col = GetComponent<BoxCollider>();

        collisionMask = 1 << 8;
    }

    void Update()
    {
        moveSideways = Input.GetAxis("Horizontal");
        moveForward = Input.GetAxis("Vertical");

        walking = false;
        sprinting = false;

        if (Input.GetKey(KeyCode.LeftControl))
            walking = true;

        if (Input.GetKey(KeyCode.LeftShift))
            sprinting = true;


        if (CanJump() && (Input.GetButtonDown("Jump") || Input.GetKeyDown(KeyCode.Joystick1Button0)))
        {             
            anim.ResetTrigger("Jump");
            anim.SetTrigger("Jump");

            rb.AddForce(Vector3.up * jumpPower, ForceMode.Impulse);
        }
        
    }

    bool CanJump()
    {
        if (grounded)
            return true;

        return false;
    }

    float GroundSpeed()
    {
        return (new Vector3(rb.velocity.x, 0, rb.velocity.z)).magnitude;
    }

    Quaternion targetRotation;
    public float rotationSpeed;
    public float moveMag;

    public float timeToIdle;
    float lastMoveTime;

    public float turnDist;
    public float oldSpeed;

    public float platformCheckDist = 0.5f;

    string landing = "";

    void FixedUpdate()
    {
        bool moving = false;
        bool hardTurning = false;

        CheckForGrounded();

        CheckForPlatform();

        oldSpeed = GroundSpeed();

        if (!grounded && !semiGrounded && rb.velocity.y < 0)
        {
            landing = CheckForLanding();
        }
        else
            landing = "";

        var speed = runSpeed;

        if (grounded || semiGrounded || rb.velocity.y > 0)
        {
            if (walking)
                speed = walkSpeed;

            if (sprinting)
                speed = sprintSpeed;
        }
        else
        {
            // slow down movement and/or move at a reduced rate
            //speed = walkSpeed;
        }

        if (landing != "hard")
        {
            var flatForward = new Vector3(Camera.main.transform.forward.x, 0f, Camera.main.transform.forward.z);
            var flatRight = new Vector3(Camera.main.transform.right.x, 0f, Camera.main.transform.right.z);

            var moveF = flatForward.normalized * moveForward;
            var moveS = flatRight.normalized * moveSideways;

            if ((moveForward != 0 || moveSideways != 0))
            {
                targetRotation = Quaternion.LookRotation(moveF + moveS);

                turnDist = transform.rotation.eulerAngles.y - targetRotation.eulerAngles.y;

                moving = true;
                lastMoveTime = Time.time;
            }

            if (!hardTurning)
                transform.rotation = Quaternion.Lerp(transform.rotation, targetRotation, Time.deltaTime * rotationSpeed);

            moveMag = (moveF + moveS).magnitude;
            moveMag = Mathf.Clamp(moveMag, -1f, 1f);

            var targetSpeed = transform.forward * moveMag * speed * Time.deltaTime;

            if (!anim.GetCurrentAnimatorStateInfo(0).IsTag("turning"))
                rb.velocity = new Vector3(targetSpeed.x, rb.velocity.y, targetSpeed.z);

            if (oldSpeed > 10 && GroundSpeed() < 1)
                anim.SetTrigger("Stop");
        }

        anim.ResetTrigger("Idle");
        anim.ResetTrigger("Teeter");
        anim.ResetTrigger("Fall");
        anim.ResetTrigger("Walk");
        anim.ResetTrigger("Run");
        anim.ResetTrigger("Sprint");
        anim.ResetTrigger("Land");
        //anim.ResetTrigger("Hard Turn");

        if (landing == "soft" || landing == "hard")
        {
            if (landing == "hard")
                anim.SetBool("Hard Landing", true);
            else
                anim.SetBool("Hard Landing", false);

            anim.SetTrigger("Land");
        }
        else
        {
            if ((grounded || semiGrounded) && !anim.GetCurrentAnimatorStateInfo(0).IsTag("landing"))
            {
                if (!moving && Time.time > lastMoveTime + timeToIdle)
                {
                    if (grounded && !anim.GetCurrentAnimatorStateInfo(0).IsTag("stopping"))
                        anim.SetTrigger("Idle");
                    else if (semiGrounded)
                        anim.SetTrigger("Teeter");
                }
                else
                {
                    if (walking)
                        anim.SetTrigger("Walk");
                    else
                    {
                        //if (turnDist > 135f)

                        if (true)
                        {
                            if (sprinting)
                                anim.SetTrigger("Sprint");
                            else
                                anim.SetTrigger("Run");
                        }
                    }
                }
            }
            else
            {
                if (rb.velocity.y > 0)
                {

                }
                //else if(!anim.GetCurrentAnimatorStateInfo(0).IsTag("jumping"))
                //    anim.SetTrigger("Fall");
            }
        }        
    }


    
    float bottomOffset = -0.05f;

    void CheckForGrounded()
    {
        bool frontDown, backDown, leftDown, rightDown;

        var radius = col.size.x * 0.4f;
        var bottom = transform.position - new Vector3(0, (col.size.y * 0.5f) - col.center.y + bottomOffset, 0);

        // do four raycasts 

        // forward
        frontDown = DownCast(bottom + transform.forward * radius, collisionMask, 0.1f);
        backDown = DownCast(bottom - transform.forward * radius, collisionMask, 0.1f);
        rightDown = DownCast(bottom + transform.right * radius, collisionMask, 0.1f);
        leftDown = DownCast(bottom - transform.right * radius, collisionMask, 0.1f);

        grounded = frontDown && backDown && leftDown && rightDown;
        semiGrounded = frontDown || backDown || leftDown || rightDown;
    }

    void CheckForPlatform()
    {
        var bottom = transform.position - new Vector3(0, (col.size.y * 0.5f) - col.center.y - 1f, 0);
        
        RaycastHit hitInfo;
        bool hit = Physics.Raycast(bottom, Vector3.down, out hitInfo, platformCheckDist, collisionMask);
        bool platform = false;

        if (hit)
        {            
            if (hitInfo.collider.tag == "Platform")
            {
                platform = true;
                transform.parent = hitInfo.collider.gameObject.transform;
            }            
        }

        if(!platform)
        {
            transform.parent = null;
        }

        if (Debug.isDebugBuild)
        {
            Color c = platform ? Color.red : Color.green;
            Debug.DrawLine(bottom, bottom + Vector3.down * platformCheckDist, c);
        }

    }

    string CheckForLanding()
    {
        var bottom = transform.position - new Vector3(0, (col.size.y * 0.5f) - col.center.y - 1f, 0);

        if (DownCast(bottom, collisionMask, 2f))
            return "soft";

        return "";
    }

    bool DownCast(Vector3 pos, LayerMask layer, float dist)
    {
        bool hit = Physics.Raycast(pos, Vector3.down, dist, layer);

        if (Debug.isDebugBuild)
        {
            Color c = hit ? Color.red : Color.green;
            Debug.DrawLine(pos, pos + Vector3.down * dist, c);
        }

        return hit;
    }
}
