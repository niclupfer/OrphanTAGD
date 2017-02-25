using UnityEngine;
using System.Collections;

public class FlyCamera : MonoBehaviour
{

    // code 'borrowed' from https://forum.unity3d.com/threads/simplle-free-fly-camera-script.167604/ 

    public float speed = 0.5f;


    public Vector2 clampInDegrees = new Vector2(360, 180);
    public Vector2 sensitivity = new Vector2(2, 2);
    public Vector2 smoothing = new Vector2(3, 3);
    public Vector2 targetDirection;

    Vector2 _mouseAbsolute;
    Vector2 _smoothMouse;


    // Use this for initialization
    void Start()
    {
        //Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = true;

        // Set target direction to the camera's initial orientation.
        targetDirection = transform.localRotation.eulerAngles;
    }


    void Update()
    {
        //if (Input.GetKey(KeyCode.Mouse0))
        //{
            // TODO - set cursor to grabby hand
            //Cursor.SetCursor();

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

        if (Input.GetAxis("Vertical") != 0)
        {
            transform.Translate(transform.forward * speed * Input.GetAxis("Vertical"), Space.World);
        }

        if (Input.GetAxis("Horizontal") != 0)
        {
            transform.Translate(transform.right * speed * Input.GetAxis("Horizontal"), Space.World);
        }

        if (Input.GetKey(KeyCode.E))
        {
            transform.Translate(transform.up * speed * 0.5f, Space.World);
        }

        else if (Input.GetKey(KeyCode.Q))
        {
            transform.Translate(transform.up * speed * -0.5f, Space.World);
        }
    }
}