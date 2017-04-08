using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PanelRenderer : MonoBehaviour {

	Transform table;
	GameObject panelUI;
	// Use this for initialization
	void Start () {
		table = this.transform;
		panelUI = table.GetChild(0).gameObject;
	}

	void OnTriggerEnter(Collider player)
	{
		if (player.gameObject.tag == "Player") 
		{
			panelUI.transform.SetParent(player.transform, false);
			Debug.Log ("UI attached to player");
		}
	}

	void OnTriggerExit(Collider player)
	{
		if (player.gameObject.tag == "Player") 
		{
			panelUI.transform.SetParent(table, false);
			Debug.Log ("UI no longer attached to player");
		}
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
