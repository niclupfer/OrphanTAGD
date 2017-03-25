using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemRespawn : MonoBehaviour {

	public float spawnTime;
	float timer = 0;
	Transform table;
	GameObject item;

	// Use this for initialization
	void Start () {
		table = this.transform;
		item = this.gameObject.transform.GetChild(0).gameObject;

	}
	
	// Update is called once per frame
	void Update () {
		if (table.childCount == 0) 
		{
			Debug.Log (timer + " " + table.childCount);
			timer += Time.deltaTime;
			if (timer >= spawnTime) {
				Vector3 position = table.position;
				position.Set (position.x, position.y + 2, position.z);
				var rotation = Quaternion.Euler(transform.rotation.x, transform.rotation.y, transform.rotation.z);
				var newItem = Instantiate (item, position, rotation);
				newItem.transform.parent = transform;
				Debug.Log (table.childCount);
				timer = 0;
			}
		}
	}
}
