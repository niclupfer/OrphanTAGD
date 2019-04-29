using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spinner : MonoBehaviour {

    public Vector3 speed;

	void Start ()
    {
		
	}
	
	void Update ()
    {
        transform.eulerAngles += speed * Time.deltaTime;
	}
}
