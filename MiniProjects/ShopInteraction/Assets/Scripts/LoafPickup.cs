using UnityEngine;
using System.Collections;

public class LoafPickup : MonoBehaviour {

	int hungerValue;
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
			inPlayerHands = true;
		}
		if (other.gameObject.tag == "Baker"){
			onTable = false;
			inBakerHands = true;
		}
	}

	void eatItem() {
		/*insert code for changing hunger before destroying bread loaf*/
		if(this.tag == "Bread")
			hungerValue = 25;
		if(this.tag == "Orange")
			hungerValue = 10;
		if(this.tag == "Apple")
			hungerValue = 10;
		// Player.replenishHunger(hungerValue);
		Destroy (gameObject);
	}

	void OnDestroy(){
		
	}

	// Update is called once per frame
	void Update () {	
		if (inPlayerHands == true) {
			//gameObject.SetInactive();
			//GetComponent<Renderer>().enabled = false;
			//if (player presses button to eat item)
			isEaten = true;
		
			if (isEaten == true) {
				eatItem ();
			}
		}
		if(inBakerHands == true){
			// make food item able to be stolen
		}
	}
}
