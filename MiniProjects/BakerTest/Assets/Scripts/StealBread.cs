using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StealBread : MonoBehaviour {

    public GameObject player;
    public GameObject bread;
    private bool first;
	// Use this for initialization
	void Start () {
        first = true;
	}
	
	// Update is called once per frame
	void Update () {
        Debug.Log(  bread.gameObject.activeInHierarchy);
        if (!bread.gameObject.activeInHierarchy && first)
        {
            first = false;
            Debug.Log("Stole bread!");
            this.GetComponent<BakerAI>().StartChase();
        }
	}
}
