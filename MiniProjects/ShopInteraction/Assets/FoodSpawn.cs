using UnityEngine;
using System.Collections;

public class FoodSpawn : MonoBehaviour {

	public GameObject Food;
	GameObject FoodClone;
	int foodCount = 0;

	void Update(){
		while (foodCount == 0) {
			FoodClone = Instantiate (Food, transform.position, Quaternion.identity) as GameObject;
			foodCount = 1;
			Destroy (FoodClone, 5);
		}
	}

	void OnDestroy() {
		foodCount = 0;
	}

}
