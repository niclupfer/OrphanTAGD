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
    public float footstepMod;
    float lastFootstepTime;

    public float jumpSpeed;
    public float jumpTime;
	public float jumpDelay_standing;
	public float jumpDelay_running;
	public float jumpDelay_sprinting;
    public float ups = 0f;

	public float rollSpeed;
	public float rollTime;
	public float[] rollDownTimes;
	public float[] rollUpTimes;
	Vector3 rollDirection;
	public float forwards = 0f;

	Vector3 lastPosition;
	float lastDelta;
	float clickTimeout = 0.3f;
	float lastSideMoveTime;
	bool wasLeft;
	bool wasRight;

    /*
    public GameObject eatSoundObj;
    */
    public AudioClip footstep;
	public AudioClip jump;
	public AudioClip hup;
	public AudioClip roll;
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

		/*
		if (moveSideways > 0)
		{
			if (lastSideMoveTime + clickTimeout > Time.time && wasRight == true && CanJump ()) {
				// do right juke;
				anim.SetTrigger("Juke");
			}			

			wasRight = true;
			wasLeft = false;
		}
		else if (moveSideways < 0)
		{
			if (lastSideMoveTime + clickTimeout > Time.time && wasLeft == true && CanJump ()) {
				// do left juke;
				anim.SetTrigger("Juke");
			}	
			wasLeft = true;
			wasRight = false;
		}
		else
		{
			lastSideMoveTime = Time.time;
		}
		*/


        if(moveSideways != 0 || moveForward != 0)
        {
            wasInput = true;
        }

        if (Input.GetKey(KeyCode.LeftAlt))
        {
            moveForward *= 0.4f;
            moveSideways *= 0.4f;
            Debug.Log("Going Slow");
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

		anim.ResetTrigger("Cool");
		anim.ResetTrigger("Vault");

		if (speedMod < 1f)
			speedMod = 1f;

		// if moving towards a vaultable object at the right distance
		if (!crouching && ObjectInFront_Vaultable ()) {
			// do cool animation and give speed boost
			anim.SetTrigger ("Vault");
			//speedMod += 0.3f;
			// notify player of coolness somehow
		}

		if (sprinting) {
			if (Random.Range (0, 10) > 5)
				anim.SetTrigger ("Cool");
		}

		crouching = false;
		anim.SetBool ("Crouching", crouching);


		if (Mathf.Abs(moveForward) + Mathf.Abs(moveSideways) > 0.1f) {
			if(speedMod > 1.3f)
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

		am.PlaySFX(jump, 1, true);

        var jumpEndTime = Time.time + jumpTime;
        yield return new WaitForFixedUpdate();

		am.PlaySFX(hup, 1, true);

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
		anim.ResetTrigger("Cool");
		anim.ResetTrigger("Vault");
    }

	IEnumerator DoRoll()
	{
		anim.ResetTrigger("Roll"); 
		anim.SetTrigger("Roll");

		crouching = false;
		anim.SetBool ("Crouching", crouching);
		if (speedMod < 1f)
			speedMod = 1f;

		am.PlaySFX(roll, 1, true);

		rollDirection = transform.forward;
		forwards = rollSpeed;
	
		var rollEndTime = Time.time + rollTime;
		var rollDownTime = Time.time + rollDownTimes [0];
		var rollUpTime = Time.time + rollUpTimes [0];

		var standardHeight = GetComponent<CapsuleCollider>().height;

		while(Time.time < rollEndTime)
		{
			if( Time.time > rollDownTime)
				GetComponent<CapsuleCollider>().height = 2f;

			if(Time.time > rollUpTime)
				GetComponent<CapsuleCollider>().height = standardHeight;

			yield return new WaitForFixedUpdate();
		}

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
		var actualSpeed = moveMag * speed * speedMod * Time.deltaTime;
		anim.SetFloat ("Speed", actualSpeed);

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

 		// check for footstep
		if (actualSpeed > 0f && onGround && forwards == 0f) {
			//Debug.Log (footstepMod / actualSpeed);
			if (footstepMod / actualSpeed < Time.time - lastFootstepTime)
				Footstep ();
		}

		var delta = (transform.position - lastPosition).magnitude;
		Debug.Log ("Delta: " + delta);
		if (delta < 0.05f && sprinting && lastDelta > 0.15f) {
			// must have run into something
			anim.SetTrigger("Ran Into Something");
		}

		lastDelta = delta;
		lastPosition = transform.position;
    }

	void Footstep()
    {
		lastFootstepTime = Time.time;

		// make dust
		if (!crouching)
		{
			var dust = Instantiate (dustObj);
			dust.transform.position = transform.position;
		}
        
		// play footstep sound
		var volume = 1f;
		if (crouching)
			volume = 0.3f;
		
		am.PlaySFX(footstep, volume, true);
    }

	bool ObjectInFront_Vaultable()
	{
		RaycastHit hit;
		if (Physics.Raycast (transform.position + (transform.up * 1f), transform.forward, out hit, 3f * speedMod)) {
			Debug.Log ("Front Hit " + hit.distance);
			if(hit.game hit.distance > 2f)
				return true;
		}

		
		return false;
	}
    
}
