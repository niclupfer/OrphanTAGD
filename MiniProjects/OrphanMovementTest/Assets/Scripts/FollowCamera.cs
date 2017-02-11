using UnityEngine;
using System.Collections;

public class FollowCamera : MonoBehaviour
{
    public Vector2 clampInDegrees = new Vector2(360, 180);
    public Vector2 sensitivity = new Vector2(2, 2);
    public Vector2 smoothingV = new Vector2(3, 3);
    public Vector2 targetDirection;

    Vector2 _mouseAbsolute;
    Vector2 _smoothMouse;

    public Transform target;
    public float smoothing = 5.0f;
    public float dist;
    public float speed = 2f;

    Vector3 offset;
    public Vector3 angleOffset;

    public float x;
    public float y;

    float initialFOV = 60;
    float fastFOV = 72;


    void Start()
    {
        offset = transform.position - target.position;

        dist = offset.magnitude;
        angleOffset = Quaternion.LookRotation(transform.position, target.position).eulerAngles;

        angleOffset = new Vector3(angleOffset.x, angleOffset.y, angleOffset.z);
    }
    
    void Update()
    {
        if(Input.GetAxis("Mouse ScrollWheel") > 0f)
        {
            dist += 0.2f;
        }
        else if(Input.GetAxis("Mouse ScrollWheel") < 0f)
        {
            dist -= 0.2f;
        }


        var targetOrientation = Quaternion.Euler(targetDirection);

        // Get raw mouse input for a cleaner reading on more sensitive mice.
        var mouseDelta = new Vector2(Input.GetAxisRaw("Mouse X"), Input.GetAxisRaw("Mouse Y"));

        // Scale input against the sensitivity setting and multiply that against the smoothing value.
        mouseDelta = Vector2.Scale(mouseDelta, new Vector2(sensitivity.x * smoothingV.x, sensitivity.y * smoothingV.y));

        // Interpolate mouse movement over time to apply smoothing delta.
        _smoothMouse.x = Mathf.Lerp(_smoothMouse.x, mouseDelta.x, 1f / smoothingV.x);
        _smoothMouse.y = Mathf.Lerp(_smoothMouse.y, mouseDelta.y, 1f / smoothingV.y);

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
        

        Vector3 position = new Vector3(offset.x, offset.y, -dist*2) + target.position;
        //Vector3 position = new Vector3(offset.x, offset.y, -dist) + target.position;
        //transform.position = Vector3.Lerp(transform.position, position, smoothing * Time.deltaTime);
        transform.position = position;

        

        transform.position = RotatePointAroundPivot(transform.position,
                                target.position,
                                transform.localRotation);

        Debug.DrawRay(transform.position, target.position, Color.red);
        //Debug.DrawRay(transform.position, target.position, Color.green);

    }

    void FixedUpdate()
    {

    }

    public static Vector3 RotatePointAroundPivot(Vector3 point, Vector3 pivot, Quaternion angle)
    {
        return angle * (point - pivot) + pivot;
    }
}
