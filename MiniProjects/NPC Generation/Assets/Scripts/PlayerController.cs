using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour {
    
    public float speed;
	private float speedMod = 1f;

	private Rigidbody rb;
	private Animator anim;

	public float moveSideways = 0.0f;
	public float moveForward = 0.0f;

	public bool sprinting = false;
	public bool hiding = false;

    public GameObject dustObj;
    public AudioClip footstep;
    public float dustInterval;
    float lastDustTime;


    // for node stuff
    public float sightDistance = 10f;
    public bool lookForNodeCtrls = true;

    public AudioManager am;

	void Start ()
	{
		anim = GetComponentInChildren<Animator>();
		rb = GetComponent<Rigidbody>();
	}
	

	void Update ()
	{
        moveSideways = Input.GetAxis("Horizontal");
		moveForward = Input.GetAxis("Vertical");

		speedMod = 1f;

		if (Input.GetButton ("Sprint")) {
			sprinting = true;
			speedMod = 1.5f;
		} else {
			sprinting = false;
		}

		if (Input.GetKey (KeyCode.LeftControl)) {
			hiding = true;
			speedMod = 0.5f;
		} else {
			hiding = false;
		}
		anim.SetBool ("Hiding", hiding);

        if ((moveForward != 0 || moveSideways != 0) && lastDustTime + dustInterval < Time.time)
            MakeDust();

      //  if (lookForNodeCtrls)
        //    StartCoroutine(LookForNodeCtrls());
    }

	void FixedUpdate()
	{
		rb.angularVelocity = Vector3.zero;

        //var flatForward = new Vector3(transform.forward.x, 0f, transform.forward.z);
        //var flatRight = new Vector3(transform.right.x, 0f, transform.right.z);

        
        var flatForward = new Vector3(Camera.main.transform.forward.x, 0f, Camera.main.transform.forward.z);
        var flatRight = new Vector3(Camera.main.transform.right.x, 0f, Camera.main.transform.right.z);

        

        var moveF = flatForward * moveForward * speed * speedMod * Time.deltaTime;
		var moveS = flatRight * moveSideways * speed * Time.deltaTime;

        if (moveForward != 0 || moveSideways != 0)
        {
            transform.rotation = Quaternion.LookRotation(moveF + moveS);
        }

        anim.SetFloat ("Speed", moveF.magnitude + moveS.magnitude);

		rb.velocity = moveF + moveS;

       
      

    }

    void MakeDust()
    {
        var dust = Instantiate(dustObj);
        dust.transform.position = transform.position;
        lastDustTime = Time.time;
        am.PlaySFX(footstep, 1, true);
    }
}
