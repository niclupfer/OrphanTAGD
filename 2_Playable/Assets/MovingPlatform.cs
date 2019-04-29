using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[System.Serializable]
public class MovingPlatformBounds
{
    public Vector3 min;
    public Vector3 max;
}

public class MovingPlatform : MonoBehaviour {

    public MovingPlatformBounds bounds;

    public float speed;

    Vector3 velocity;

    bool movingX, movingY, movingZ;

	void Start ()
    {        
        float xVel = 0, yVel = 0, zVel = 0;

        if (bounds.min.x != bounds.max.x)
        {
            xVel = 1f;
            movingX = true;
        }

        if (bounds.min.y != bounds.max.y)
        {
            yVel = 1f;
            movingY = true;
        }

        if (bounds.min.z != bounds.max.z)
        {
            zVel = 1f;
            movingZ = true;
        }

        velocity = new Vector3(xVel, yVel, zVel);
	}
	
	void Update ()
    {
        transform.localPosition += velocity * speed * Time.deltaTime;

        if (movingX && (transform.localPosition.x > bounds.max.x || transform.localPosition.x < bounds.min.x))
        {
            velocity = new Vector3(-velocity.x, velocity.y, velocity.z);
            if (transform.localPosition.x > bounds.max.x)
                transform.localPosition = new Vector3(bounds.max.x, transform.localPosition.y, transform.localPosition.z);

            if (transform.localPosition.x < bounds.min.x)
                transform.localPosition = new Vector3(bounds.min.x, transform.localPosition.y, transform.localPosition.z);
        }

        if (movingY && (transform.localPosition.y > bounds.max.y || transform.localPosition.y < bounds.min.y))
        {
            velocity = new Vector3(velocity.x, -velocity.y, velocity.z);

        }

        if (movingZ && (transform.localPosition.z > bounds.max.z || transform.localPosition.z < bounds.min.z))
        {
            velocity = new Vector3(velocity.x, velocity.y, -velocity.z);

        }
    }
}
