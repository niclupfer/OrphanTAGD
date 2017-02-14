using UnityEngine;
using System.Collections;

public class PlayerController : MonoBehaviour {

    public Vector2 clampInDegrees = new Vector2(360, 180);
    public Vector2 sensitivity = new Vector2(2, 2);
    public Vector2 smoothing = new Vector2(3, 3);
    public Vector2 targetDirection;

    Vector2 _mouseAbsolute;
    Vector2 _smoothMouse;

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

		//Cursor.lockState = CursorLockMode.Locked;
		Cursor.visible = false;

		// Set target direction to the camera's initial orientation.
		targetDirection = transform.localRotation.eulerAngles;
	}
	

	void Update ()
	{
        //if (Input.GetKey (KeyCode.Mouse0)) {
         //var targetOrientation = Quaternion.Euler(targetDirection);

            // Allow the script to clamp based on a desired target value.
            var targetOrientation = Quaternion.Euler(targetDirection);

            // Get raw mouse input for a cleaner reading on more sensitive mice.
            var mouseDelta = new Vector2(Input.GetAxisRaw("Mouse X"), Input.GetAxisRaw("Mouse Y"));

            // Scale input against the sensitivity setting and multiply that against the smoothing value.
            mouseDelta = Vector2.Scale(mouseDelta, new Vector2(sensitivity.x * smoothing.x, sensitivity.y * smoothing.y));

            // Interpolate mouse movement over time to apply smoothing delta.
            _smoothMouse.x = Mathf.Lerp(_smoothMouse.x, mouseDelta.x, 1f / smoothing.x);
            _smoothMouse.y = Mathf.Lerp(_smoothMouse.y, mouseDelta.y, 1f / smoothing.y);

            // Find the absolute mouse movement value from point zero.
            _mouseAbsolute += _smoothMouse;

            // Clamp and apply the local x value first, so as not to be affected by world transforms.
            if (clampInDegrees.x < 360)
                _mouseAbsolute.x = Mathf.Clamp(_mouseAbsolute.x, -clampInDegrees.x * 0.5f, clampInDegrees.x * 0.5f);

            // Then clamp and apply the global y value.
            if (clampInDegrees.y < 360)
                _mouseAbsolute.y = Mathf.Clamp(_mouseAbsolute.y, -clampInDegrees.y * 0.5f, clampInDegrees.y * 0.5f);

            var xRotation = Quaternion.AngleAxis(-_mouseAbsolute.y, targetOrientation * Vector3.right);
            transform.localRotation = xRotation * targetOrientation;

            var zRotation = Quaternion.AngleAxis(_mouseAbsolute.x, transform.InverseTransformDirection(Vector3.up));
            transform.localRotation *= zRotation;
        //}

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
