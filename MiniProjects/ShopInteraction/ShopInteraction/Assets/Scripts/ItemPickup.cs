using UnityEngine;
using System.Collections;

public class ItemPickup : MonoBehaviour {

	bool onTable;
	bool inBakerHands;
	bool inPlayerHands;
	bool isEaten;

	// Use this for initialization
	void Start () {
		onTable = true;
		inBakerHands = false;
		inPlayerHands = false;
		isEaten = false;
	}

	void OnTriggerEnter (Collider other){
		if (other.gameObject.tag == "Player") 
		{
			onTable = false;
			transform.parent = other.transform;
			inPlayerHands = true;
		}
		if (other.gameObject.tag == "Baker"){
			onTable = false;
			inBakerHands = true;
		}
	}

	void eatItem() {
		/*insert code for changing hunger before destroying bread loaf*/
		Destroy (gameObject);
	}

	// Update is called once per frame
	void Update () {
		if (onTable == false) {
			//gameObject.SetInactive();
			//GetComponent<Renderer>().enabled = false;
		}
		if (isEaten == true) {
			eatItem ();
		}
	}
}
