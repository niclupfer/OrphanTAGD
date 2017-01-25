using UnityEngine;
using System.Collections;

public class FollowCamera : MonoBehaviour
{

    public Transform target;
    public float smoothing = 5.0f;
    public float dist;
    public float speed = 2f;

    Vector3 offset;
    public Vector3 angleOffset;

    public float x;
    public float y;



    void Start()
    {
        offset = transform.position - target.position;

        dist = offset.magnitude;
        angleOffset = Quaternion.LookRotation(transform.position, target.position).eulerAngles;

        angleOffset = new Vector3(angleOffset.x, angleOffset.y, angleOffset.z);
    }
    
    void Update()
    {
        //moveHoriz = Input.GetAxis("RightHorizontal");
        //moveVert = Input.GetAxis("RightVertical");

        //y += Input.GetAxis("RightVertical") * speed * 0.02f;
        //x += Input.GetAxis("RightHorizontal") * speed * 0.02f;

        //y = ClampAngle(y, yMinLimit, yMaxLimit);

        //Quaternion rotation = Quaternion.Euler(y, x, 0f);
        //transform.rotation = rotation;
        //Vector3 position = rotation * new Vector3(offset.x, offset.y, -dist) + target.position;
		Vector3 position = new Vector3(offset.x, offset.y, -dist) + target.position;
        transform.position = position;


    }

    void FixedUpdate()
    {
        //Vector3 targetPosition = target.position + offset;
        //Vector3 targetPosition = target.position + (dist * angleOffset.normalized);

        //var targetPosition = dist * -target.transform.forward;
        //targetPosition = new Vector3(targetPosition.x, 5f, targetPosition.z);
        //targetPosition = target.position + targetPosition;
        //transform.position = Vector3.Lerp(transform.position, targetPosition, smoothing * Time.deltaTime);

        //Vector3 targetRotation = target.rotation.eulerAngles + angleOffset;
        //transform.rotation = Quaternion.Lerp(transform.rotation, Quaternion.Euler(targetRotation), smoothing * Time.deltaTime);

        //transform.forward = target.transform.position - transform.position;
    }
}
