using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PlayerController : MonoBehaviour {
    
    public float speed;
	private float speedMod = 1f;

    private CharacterController controller;
	private Rigidbody rb;
	private Animator anim;

	public float moveSideways = 0.0f;
	public float moveForward = 0.0f;

	public bool sprinting = false;
	public bool crouching = false;
    public bool sitting = false;

    float lastInputTime;
    public float yawnTime = 20f;
    bool yawned = false;
    /*
    public bool nearTable = false;
    public bool loafInHands = false;

    GameObject closestTable;
    GameObject foodInHands;
    
    public bool dead = false;
    */
    public bool playable = false;
    public bool onGround = false;

    public GameObject dustObj;
    public float dustInterval;
    float lastDustTime;

    public float jumpSpeed;
    public float jumpTime;
	public float jumpDelay_standing;
	public float jumpDelay_running;
	public float jumpDelay_sprinting;
    public float ups = 0f;

	public float rollSpeed;
	public float rollTime;
	public float rollShrinkDelay;
	Vector3 rollDirection;
	public float forwards = 0f;
    /*
    public GameObject eatSoundObj;
    */
    public AudioClip footstep;
    public AudioManager am;

    public Transform rightHand;

    private LayerMask collisionMask;

	void Start ()
	{
        controller = GetComponent<CharacterController>();
        anim = GetComponentInChildren<Animator>();
		rb = GetComponent<Rigidbody>();

        collisionMask = 1 << 9;

        Init();
	}

    public void Init()
    {
        //transform.position = new Vector3(0, 0.1f, 0);
        //dead = false;
        //GetComponent<Hunger>().hunger = 100;
        playable = true;
    }
	

	void Update ()
	{
        bool wasInput = false;

        if (!playable)
        {
            moveSideways = 0;
            moveForward = 0;
            return;
        }

        moveSideways = Input.GetAxis("Horizontal");
        moveForward = Input.GetAxis("Vertical");

        if(moveSideways != 0 || moveForward != 0)
        {
            wasInput = true;
        }

        if (Input.GetKey(KeyCode.LeftAlt))
        {
            moveForward *= 0.4f;
            moveSideways *= 0.4f;
          //  Debug.Log("Going Slow");
        }

        
        if (!sprinting && (Input.GetButton("Sprint") || Input.GetAxis("Sprint Trigger") > 0.8f))
        {
            sprinting = true;
            crouching = false;
            speedMod = 1.5f;
            
            anim.SetBool("Sprinting", sprinting);
            anim.SetBool("Crouching", crouching);
        }
        else if (sprinting && Input.GetButton("Sprint") == false && Input.GetAxis("Sprint Trigger") < 0.8f)
        {
            sprinting = false;
            speedMod = 1f;
            
            anim.SetBool("Sprinting", sprinting);
        }

        if(sprinting)
        {
            Camera.main.fieldOfView = Mathf.Lerp(Camera.main.fieldOfView, 80, Time.deltaTime);
        }
        else
        {
            Camera.main.fieldOfView = Mathf.Lerp(Camera.main.fieldOfView, 60, Time.deltaTime);
        }
        

        if (Input.GetButtonDown("Crouch"))
        {
            wasInput = true;
            if (crouching)
            {
                crouching = false;
                speedMod = 1f;
                anim.SetBool("Crouching", crouching);
            }
            else
            {
                crouching = true;
                speedMod = 0.5f;
                anim.SetBool("Crouching", crouching);
            }
        }

        
        if (CanJump() && (Input.GetButtonDown("Jump") || Input.GetKeyDown(KeyCode.Joystick1Button0)))
        {
            wasInput = true;
           // anim.ResetTrigger("Jump");                   
            StartCoroutine(DoJump()); 
        }
		else if (CanJump() && (Input.GetKeyDown(KeyCode.Joystick1Button1) || Input.GetKeyDown(KeyCode.Q)))
        {
            wasInput = true;
			StartCoroutine (DoRoll ());            
        }
    


        if ((moveForward != 0 || moveSideways != 0) && lastDustTime + (dustInterval/speedMod) < Time.time)
            MakeDust();

        /*
        if(loafInHands == true)
        {
            ShowEatText();
            if (Input.GetButtonDown("Interact"))
            {
                StartCoroutine(EatLoaf());
            }
        }
        else if (nearTable == true)
        {
            ShowStealText();
            if (Input.GetButtonDown("Interact"))
            {
                StealLoaf(closestTable);
            }
        }
        else
        {
            HideAllText();
        }
        */
        if (wasInput)
        {
            lastInputTime = Time.time;
            yawned = false;
            sitting = false;
            anim.ResetTrigger("Yawn");
            anim.ResetTrigger("Sit");
        }
        else if (yawned == false)
        {
            if (lastInputTime + yawnTime < Time.time)
                Yawn();
        }
        else if (yawned == true && sitting == false)
        {
            if (lastInputTime + (yawnTime * 2f) < Time.time)
                SitDown();
        }
    }

    bool CanJump()
    {
		if(anim.GetCurrentAnimatorStateInfo(0).IsTag("Grounded"))
			return onGround;
		return false;
    }

    void Yawn()
    {
        yawned = true;
        anim.SetTrigger("Yawn");
    }

    void SitDown()
    {
        sitting = true;
        anim.SetTrigger("Sit");
    }

    /*
    void StealLoaf(GameObject tableObj)
    {        
        loafInHands = true;
        foodInHands = tableObj.GetComponent<ShopTable>().StealFood();

        // move the loaf
        foodInHands.transform.parent = null;
        foodInHands.GetComponent<LoafPickup>().inPlayerHands = true;
        foodInHands.GetComponent<LoafRotation>().onDisplay = false;
        //foodInHands.GetComponent<LoafPickup>().hand = GameObject.Find("R_WRIST_END RIGHT HANDX");
        foodInHands.GetComponent<LoafPickup>().hand = rightHand;
        //Debug.Log("Grab loaf");
        //Debug.Log(rightHand.position);
    }

    IEnumerator EatLoaf()
    {
        Instantiate(eatSoundObj);       

        playable = false;
        anim.SetBool("Eating", true);

        yield return new WaitForSeconds(3);

        GetComponent<Hunger>().hunger += foodInHands.GetComponent<LoafPickup>().nuritionalValue;
        if (GetComponent<Hunger>().hunger > 100)
            GetComponent<Hunger>().hunger = 100;

        playable = true;
        loafInHands = false;
        anim.SetBool("Eating", false);
        Destroy(foodInHands);
        foodInHands = null;
    }
    */

    IEnumerator DoJump()
    {
		anim.ResetTrigger("Jump"); 
		anim.SetTrigger("Jump");

		crouching = false;
		anim.SetBool ("Crouching", crouching);
		if (speedMod < 1f)
			speedMod = 1f;

		if (Mathf.Abs(moveForward) + Mathf.Abs(moveSideways) > 0.1f) {
			if(speedMod > 1f)
				yield return new WaitForSeconds(jumpDelay_sprinting);
			else {
				yield return new WaitForSeconds(jumpDelay_running);
			}
		}
		else
			yield return new WaitForSeconds(jumpDelay_standing);
        
		ups = jumpSpeed;
        var standardHeight = GetComponent<CapsuleCollider>().height;
        GetComponent<CapsuleCollider>().height = 2f;

        var jumpEndTime = Time.time + jumpTime;
        yield return new WaitForFixedUpdate();

        while(Time.time < jumpEndTime)
        {
            ups = Mathf.Lerp(jumpSpeed, 0, 1-(jumpEndTime - Time.time ) / jumpTime);
            yield return new WaitForFixedUpdate();
        }

        //yield return new WaitForSeconds(jumpTime);

        //ups = -jumpSpeed;

        //yield return new WaitForSeconds(jumpTime);
        GetComponent<CapsuleCollider>().height = standardHeight;
        ups = 0f;
        anim.ResetTrigger("Jump");
    }

	IEnumerator DoRoll()
	{
		anim.ResetTrigger("Roll"); 
		anim.SetTrigger("Roll");

		crouching = false;
		anim.SetBool ("Crouching", crouching);
		if (speedMod < 1f)
			speedMod = 1f;

		rollDirection = transform.forward;
		forwards = rollSpeed;
	
		var rollEndTime = Time.time + rollTime;
		yield return new WaitForFixedUpdate();

		yield return new WaitForSeconds (rollShrinkDelay);

		var standardHeight = GetComponent<CapsuleCollider>().height;
		GetComponent<CapsuleCollider>().height = 2f;

		yield return new WaitForSeconds(rollTime - rollShrinkDelay);

		GetComponent<CapsuleCollider>().height = standardHeight;
		forwards = 0f;
		anim.ResetTrigger("Roll");
	}


    IEnumerator DoWallClimb()
    {
        ups = jumpSpeed;

        anim.SetTrigger("WallClimb");
        yield return new WaitForSeconds(jumpTime);

        ups = 0f;
    }

    void FixedUpdate()
	{
        // check if on the ground
        Debug.DrawRay(transform.position + (transform.up * 0.1f), -transform.up, Color.yellow);
        if (Physics.Raycast(transform.position + (transform.up * 0.1f), -transform.up, 0.2f))
        {
            if (onGround == false)
            {
                //Debug.Log("Landed!");
                // landed               
            }
            onGround = true;
        }
        else
            onGround = false;

        //anim.SetBool("Grounded", onGround);

        rb.angularVelocity = Vector3.zero;

        //var flatForward = new Vector3(transform.forward.x, 0f, transform.forward.z);
        //var flatRight = new Vector3(transform.right.x, 0f, transform.right.z);

        
        var flatForward = new Vector3(Camera.main.transform.forward.x, 0f, Camera.main.transform.forward.z);
        var flatRight = new Vector3(Camera.main.transform.right.x, 0f, Camera.main.transform.right.z);

        var moveF = flatForward * moveForward;
		var moveS = flatRight * moveSideways;

		if (moveForward != 0 || moveSideways != 0 && forwards == 0)
        {
            transform.rotation = Quaternion.LookRotation(moveF + moveS);
        }
        //Debug.Log("both : " + (moveF + moveS));
        //Debug.Log("normalized : " + (moveF + moveS).normalized);
        var moveMag = (moveF + moveS).magnitude;
        moveMag = Mathf.Clamp(moveMag, -1f, 1f);
        anim.SetFloat ("Speed", moveMag * speed * speedMod * Time.deltaTime);

        //rb.velocity = (moveF + moveS).normalized * speed * speedMod * Time.deltaTime;
        //rb.velocity += new Vector3(0f, ups, 0f);

        var targetSpeed = (moveF + moveS) * 0.5f * speed * speedMod * Time.deltaTime;
        targetSpeed += new Vector3(0f, ups, 0f);

		if (forwards != 0f)
		{
			// is there some forced forward movement, like from a roll or slide
			// only do that forward movement
			targetSpeed = rollDirection * forwards * speedMod * Time.deltaTime;
			Debug.Log (targetSpeed);
		}

        rb.AddForce(targetSpeed - rb.velocity, ForceMode.VelocityChange);

        //var goodCollisionPos = Move(
        //    targetSpeed,
        //    transform.position);

        //transform.position = goodCollisionPos;
        //controller.Move((moveF + moveS).normalized * speed * speedMod * Time.deltaTime);

        
    }

    void MakeDust()
    {
        var dust = Instantiate(dustObj);
        dust.transform.position = transform.position;
        lastDustTime = Time.time;

        //am.PlaySFX(footstep, 1, true);
    }

    public Vector3 Move(Vector3 moveAmount, Vector3 position)
    {
        float deltaY = moveAmount.y;

        //Vector3 entityPosition = position;
        // Resolve any possible collisions below and above the entity.
        //deltaY = yAxisCollisions(deltaY, entityPosition);

        // Resolve any possible collisions left and right of the entity.
        // Check if our deltaX value is 0 to avoid unnecessary collision detection.
        if (moveAmount.x != 0 || moveAmount.z != 0)
        {
            moveAmount = xzAxisCollisions(new Vector3(moveAmount.x, 0f, moveAmount.z), position);
        }        

        Vector3 finalTransform = position + new Vector3(moveAmount.x, 0f, moveAmount.z);

        return finalTransform;
    }

    public Vector3 enPosition;
    public Vector3 offsetPos;
    public Vector3 centerPos;
    public float radius;

    private Vector3 xzAxisCollisions(Vector3 xzVec, Vector3 entityPosition)
    {
        var cap = GetComponent<CapsuleCollider>();
        
        var offset = new Vector3((xzVec.normalized.x * cap.radius), 0f, (xzVec.normalized.z * cap.radius));
        var centerPoint = entityPosition + offset;
        centerPoint = new Vector3(centerPoint.x, cap.center.y, centerPoint.z);


        //var target = new Vector3(xzVec.x, 0, xzVec.z);
        RaycastHit hit;
        if (Physics.Raycast(centerPoint, transform.forward, xzVec.magnitude))
        {
            Debug.DrawRay(transform.position, transform.forward, Color.red);
            // print("There is something in front of the object!");
            xzVec = Vector3.zero;
        }

        return new Vector3(xzVec.x, 0f, xzVec.z);

        /*
        Physics.Raycast(centerPoint, xzVec.normalized, out hit, xzVec.magnitude, collisionMask);

        Debug.DrawRay(centerPoint, xzVec, Color.yellow);
        //Debug.DrawLine(centerPoint, Vector3.zero, Color.green);
        enPosition = entityPosition;
        offsetPos = offset;
        centerPos = centerPoint;
        radius = cap.radius;
        
        if (hit.collider)
        {
            Debug.Log("Hit");
            Debug.DrawLine(centerPoint, centerPoint + xzVec, Color.red);
            float distance = hit.distance;
            // Stop entity's downward movement after coming within skin width of a boxCollider
            if (distance > 0.005f)
            {
                xzVec = xzVec.normalized * (cap.radius + 0.005f);
            }
            else
            {
                xzVec = Vector3.zero;
            }
        }
        else
        {
            Debug.DrawLine(centerPoint, centerPoint + xzVec, Color.cyan);
        }
        

        return new Vector3(xzVec.x, 0f, xzVec.z);

        /*
        // center points
        for (var i = 0; i < 4; i++)
        {
            float dirX = Mathf.Sign(deltaX);

            float x = entityPosition.x + cap.center.x + cap.radius / 2 * dirX;
            float y = (entityPosition.y + cap.center.y - cap.height / 2) + cap.height / 2 * i;

            RaycastHit2D hit;
            hit = Physics2D.Raycast(new Vector2(x, y), new Vector2(dirX, 0), Mathf.Abs(deltaX), collisionMask);

            Debug.DrawRay(new Vector3(x, y, 0), new Vector3(dirX, 0, 0), Color.cyan);

            if (hit)
            {
                if (hit.collider.gameObject.tag == "Ground")
                {
                    //Debug.DrawRay(new Vector2(x, y), hit.point, Color.red);
                    float distance = hit.distance;
                    // Stop entity's downward movement after coming within skin width of a boxCollider
                    if (distance > 0.005f)
                    {
                        deltaX = distance * dirX + 0.005f;
                    }
                    else
                    {
                        deltaX = 0;
                    }
                    //SideCollision = true;

                    break;
                }
                else if (hit.collider.gameObject.tag == "Spikes")
                {
                    //GetHit(hit.collider.gameObject);

                    break;
                }
                else if (hit.collider.gameObject.tag == "Coin")
                {
                    //PickupCoin(hit.collider.gameObject);
                    break;
                }
            }
        }
        
        return deltaX;
        */
    }

    /*
    private float yAxisCollisions(float deltaY, float dirX, Vector3 entityPosition)
    {
        OnGround = false;
        // To prevent falling through collision layers by a gap in the corner
        // if we are facing right, peform y-axis raycasts starting on the right.
        int facingRight = 1;
        if (dirX == facingRight)
        {
            for (int i = 2; i > -1; --i)
            {
                if (yAxisRaycasts(i, ref deltaY, entityPosition))
                {
                    break;
                }
            }
            // else we are facing left, peform y-axis raycasts starting on the left
        }
        else
        {
            for (int i = 0; i < 3; ++i)
            {
                if (yAxisRaycasts(i, ref deltaY, entityPosition))
                {
                    break;
                }
            }
        }

        return deltaY;
    }

    private bool yAxisRaycasts(int i, ref float deltaY, Vector3 entityPosition)
    {
        float dirY = Mathf.Sign(deltaY);
        //Debug.Log("i: " + i);
        // Start at the left or the right of the boxCollider, depending on the value of i.
        float x = (entityPosition.x + offset.x - size.x / 2) + (size.x / 2) * i;

        if (i == 0)
            x += 1f;
        else if (i == 2)
            x -= 1f;

        // Bottom or top of boxCollider, depending on if dirY is positive or negative
        float y = entityPosition.y + offset.y + size.y / 2 * dirY;

        RaycastHit2D hit;
        //Physics2D.Raycast()
        hit = Physics2D.Raycast(new Vector2(x, y), new Vector2(0, dirY), Mathf.Abs(deltaY), collisionMask);

        //Debug.DrawRay(new Vector2(x, y), new Vector2(0, dirY), Color.cyan);

        if (hit)
        {
            //Debug.DrawRay(new Vector2(x, y), hit.point, Color.red);
            if (hit.collider.gameObject.tag == "Ground")
            {
                // Get Distance between entity and ground
                float distance = hit.distance;
                // Stop entity's downward movement after coming within skin width of a boxCollider
                if (distance > skin)
                {
                    deltaY = distance * dirY + skin;
                }
                else
                {
                    deltaY = 0;
                }
                if (dirY < 0)
                    OnGround = true;
                else if (jumping)
                    StopJump();
                else if (flying)
                {
                    Instantiate(landSoundObj);
                    StopFlying();
                }

                return true;
            }
            else if (hit.collider.gameObject.tag == "JumpThru" && dirY < 0 && !squatting)
            {
                // Get Distance between entity and ground
                float distance = hit.distance;
                // Stop entity's downward movement after coming within skin width of a boxCollider
                if (distance > skin)
                {
                    deltaY = distance * dirY + skin;
                }
                else
                {
                    deltaY = 0;
                }
                OnGround = true;

                return true;
            }
            else if (hit.collider.gameObject.tag == "Spikes")
            {
                GetHit(hit.collider.gameObject);
            }
            else if (hit.collider.gameObject.tag == "Coin")
            {
                PickupCoin(hit.collider.gameObject);

            }
        }

        return false;
    }
    */

    /*
    public void DieOfStarvation()
    {
        if (!dead)
        {
            dead = true;
            HideAllText();
            loafInHands = false;
            if (foodInHands != null)
                Destroy(foodInHands);

            // game over blargh!
            //GameObject.Find("Fader").GetComponent<DarthFader>().FadeIn(GAME_STATE.over);
            GameObject.Find("GameMaster").GetComponent<GameMaster>().StartState(GAME_STATE.over);
        }
    }

    void HideAllText()
    {
        GameObject.Find("StealText").GetComponent<Text>().color = new Color(0f, 0f, 0f, 0f);
        GameObject.Find("EatText").GetComponent<Text>().color = new Color(0f, 0f, 0f, 0f);
    }

    void ShowEatText()
    {
        HideAllText();
        GameObject.Find("EatText").GetComponent<Text>().color = new Color(0f, 0f, 0f, 1f);
    }

    void ShowStealText()
    {
        HideAllText();
        GameObject.Find("StealText").GetComponent<Text>().color = new Color(0f, 0f, 0f, 1f);
    }
 
    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "ShopTable")
        {
            if (other.GetComponent<ShopTable>().HasFood())
            {
                closestTable = other.gameObject;
                nearTable = true;
            }
            else
                nearTable = false;
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.tag == "ShopTable")
        {
            nearTable = false;
        }
    }

    void OnCollisionEnter(Collision other)
    {
        if (other.collider.tag == "ShopKeeper")
        {
            if (other.collider.GetComponent<BakerAI>().chasing)
            {
                // you got caught
                DieOfStarvation();
            }
        }
    }
    */
}
