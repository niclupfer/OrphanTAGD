using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPCConversation : MonoBehaviour {

    public Camera main;
    //public Camera script;
    public Camera conversationCam;
    

    // Use this for initialization
    void Start () {
        conversationCam = GetComponent<Camera>();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    public void ToggleCameras()
    {
        main.enabled = !main.enabled;
        conversationCam.enabled = !conversationCam.enabled;
    }
}
