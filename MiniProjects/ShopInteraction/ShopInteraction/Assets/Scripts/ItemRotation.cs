using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemRotation : MonoBehaviour {

	// Use this for initialization
	void Start () {

	}

	public float speed = 1;

	// Update is called once per frame
	void Update () {
		// Rotate the object around the World's Y axis at 1 degree per second
		transform.Rotate (Vector3.up, speed, Space.World);
	}
}