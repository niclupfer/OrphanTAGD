using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class testRotation : MonoBehaviour {

    public float turnSpeed = 40f;
    public float turnAmount = 20f;
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        transform.position += transform.forward * Time.deltaTime * 5f;
        veerRight();	
	}

    public void veerRight()
    {
        float turnStep = turnSpeed * Time.deltaTime;
        Quaternion turn = Quaternion.AngleAxis(turnAmount, transform.up);  
        transform.rotation = Quaternion.Slerp(transform.rotation, turn, turnStep);
       // transform.rotation = Quaternion.Slerp(transform.rotation, rotation, turnStep);   
      
    }

}
