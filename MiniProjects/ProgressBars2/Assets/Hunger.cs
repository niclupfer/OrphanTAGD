using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Hunger : MonoBehaviour {
    GameObject HungryEmpty;
    static public float hunger = 100;
    public float hungerRate = 2;
   // public float timerRate; 
    private void Start()
    {
        HungryEmpty = GameObject.Find("Hunger Empty");
    }
    // Update is called once per frame
    
	// Update is called once per frame
	void Update () { 
            hunger -= Time.deltaTime*hungerRate;
            HungryEmpty.transform.Translate(-hungerRate, 0, 0);
     
        if(hunger < 1)
        {
            hunger = 0;
        }
	}
}
