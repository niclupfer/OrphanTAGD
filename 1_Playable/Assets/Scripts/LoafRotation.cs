using UnityEngine;
using System.Collections;

public class LoafRotation : MonoBehaviour {

    public float bounceFreq;
    public float bounceAmount;

    float startY;

    public bool onDisplay = true;

    void Start ()
    {
        startY = transform.position.y;
    }

	public float speed = 1;

	// Update is called once per frame
	void Update ()
    {
        if (onDisplay)
        {
            // Rotate the object around the World's Y axis at 1 degree per second
            transform.Rotate(Vector3.up, speed, Space.World);

            var offY = Mathf.Sin(Time.time * bounceFreq) * bounceAmount;
            transform.position = new Vector3(
                transform.position.x,
                startY + offY,
                transform.position.z);
        }
    }

}