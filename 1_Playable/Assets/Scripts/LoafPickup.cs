using UnityEngine;
using System.Collections;

public class LoafPickup : MonoBehaviour {

	public bool onTable;
	public bool inBakerHands;
	public bool inPlayerHands;
	public bool isEaten;

	// Use this for initialization
	void Start () {
		onTable = true;
		inBakerHands = false;
		inPlayerHands = false;
		isEaten = false;
	}

	void OnTriggerEnter (Collider other){
		if (other.gameObject.tag == "Player") {
			onTable = false;
			transform.parent = other.transform;
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
