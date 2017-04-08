using UnityEngine;
using System.Collections;

public class ShopTypeSpawner : MonoBehaviour {

	public GameObject[] ShopTypes;

	public int numOfShops;

	// Use this for initialization
	void Start () {
		//spawn a set number of shops with random types

		for (int i = 0; i < numOfShops; i++)
		{			
			var randoShopType = Random.Range (0, ShopTypes.Length);

			var position = new Vector3 (i*5, 0, 0);
			//var rotation = Quaternion.Euler(transform.rotation.x, transform.rotation.y, transform.rotation.z);

			var newShop = Instantiate (ShopTypes [randoShopType]);
			newShop.transform.position = position;
			newShop.transform.parent = transform;
		}
	}

	// Update is called once per frame
	void Update () {
		
	}
}