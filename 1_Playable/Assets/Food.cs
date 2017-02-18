using UnityEngine;
using System.Collections;

public class Food : MonoBehaviour {
    public GameObject Player;
	// Use this for initialization
	void Start () {
        Player = GameObject.FindWithTag("Player");
	}
	
	// Update is called once per frame
	void Update () {
        float dist = Vector3.Distance(Player.transform.position, transform.position);
        if (dist < 4 && Input.GetKey(KeyCode.E))
        {
            //Hunger.hunger += 20;
            Destroy(gameObject);
        }
	}
}
