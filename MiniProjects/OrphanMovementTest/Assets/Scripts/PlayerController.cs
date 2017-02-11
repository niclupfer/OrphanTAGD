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

		if (Input.GetKey (KeyCode.LeftShift)) {
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


        Debug.DrawRay(transform.position, Camera.main.transform.position, Color.cyan);
    }

	void FixedUpdate()
	{
		rb.angularVelocity = Vector3.zero;

        //var flatForward = new Vector3(transform.forward.x, 0f, transform.forward.z);
        //var flatRight = new Vector3(transform.right.x, 0f, transform.right.z);


        var flatForward = new Vector3(Camera.main.transform.forward.x, 0f, Camera.main.transform.forward.z);
        var flatRight = new Vector3(Camera.main.transform.right.x, 0f, Camera.main.transform.right.z);

        if (moveForward != 0 || moveSideways != 0)
            transform.rotation = Quaternion.LookRotation(flatForward);

        var moveF = flatForward * moveForward * speed * speedMod * Time.deltaTime;
		var moveS = flatRight * moveSideways * speed * Time.deltaTime;

		anim.SetFloat ("Speed", moveF.magnitude);

		rb.velocity = moveF + moveS;
	}
}
