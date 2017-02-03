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


	}

	void FixedUpdate()
	{
		rb.angularVelocity = Vector3.zero;

		var moveF = transform.forward * moveForward * speed * speedMod * Time.deltaTime;
		var moveS = transform.right * moveSideways * speed * Time.deltaTime;

		anim.SetFloat ("Speed", moveF.magnitude);

		rb.velocity = moveF + moveS;
	}
}
