using UnityEngine;
using System.Collections;

public class LoafPickup : MonoBehaviour {
    
	public bool inBakerHands;
	public bool inPlayerHands;

    public int nuritionalValue;
    public Transform hand;

	void Start ()
    {
		inBakerHands = false;
		inPlayerHands = false;
	}

	void EatItem()
    {
		/*insert code for changing hunger before destroying bread loaf*/
		Destroy (gameObject);
	}
    
	void Update ()
    {
		if (inPlayerHands == true && hand != null)
        {
            // lock the loaf transform to the players right hand
            transform.position = hand.position;
            //Debug.Log(hand.position);
            transform.rotation = hand.rotation;
		}
	}
}
