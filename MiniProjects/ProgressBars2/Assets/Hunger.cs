using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Hunger : MonoBehaviour {
    static public float hunger = 100;
    public float hungerRate = 2;
   // public float timerRate;
    public float timer = 10.0f;

	// Update is called once per frame
	void Update () {
        timer -= Time.deltaTime; 
        if(timer < 0)
        {
            hunger -= hungerRate;
            timer = 10.0f;
        }
        if(hunger < 1)
        {
            hunger = 0;
        }
        gameObject.GetComponent<Text>().text = "" + hunger.ToString();
	}
}
