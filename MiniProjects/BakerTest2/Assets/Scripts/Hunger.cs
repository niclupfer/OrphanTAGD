using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Hunger : MonoBehaviour {

    GameObject emptyBar;

    public float hunger = 100;

    public float hungerRate;

    Vector3 startPos;

    private void Start()
    {
        emptyBar = GameObject.Find("Hunger Empty");
        startPos = emptyBar.GetComponent<RectTransform>().localPosition;
    }

	void Update ()
    {         
        if(hunger < 0)
        {
            hunger = 0;
            emptyBar.GetComponent<RectTransform>().localPosition = new Vector3(0, startPos.y, startPos.z);

            // game over!!!!
            GetComponent<PlayerController>().DieOfStarvation();
        }
        else
        {
            hunger -= Time.deltaTime * hungerRate;
            emptyBar.GetComponent<RectTransform>().localPosition = new Vector3(hunger, startPos.y, startPos.z);
            //HungryEmpty.transform.Translate(-hungerRate, 0, 0);
        }
    }
}
