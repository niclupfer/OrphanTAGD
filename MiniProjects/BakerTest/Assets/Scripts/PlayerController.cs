using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

public class PlayerController : MonoBehaviour {
    private Rigidbody rb;
    public float speed;
    private int count;
    public Text countText;
	// Use this for initialization
	void Start () {
        rb = GetComponent<Rigidbody>();
        count = 0;
        //countText.text = "Count: " + count.ToString();
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    void FixedUpdate(){
        float moveHorizontal = Input.GetAxis("Horizontal");
        float moveVertical = Input.GetAxis("Vertical");

        Vector3 movement = new Vector3(moveHorizontal, 0.0f, moveVertical);
        rb.AddForce(movement * speed);
    }

    private void OnTriggerEnter(Collider other){
        if (other.gameObject.CompareTag("Pick Up")){
            other.gameObject.SetActive(false);
        }
        count++;
        //countText.text = "Count: " + count.ToString();
    }
}
