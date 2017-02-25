using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Hunger : MonoBehaviour {

    GameObject emptyBar;
    GameObject emptyBar2;

    public float hunger;

    public float hungerRate;

    float lastTimeUsed;

    Vector3 startPos;

    public float hungerRechargeTime;

    float lastTimeAte;

    private void Start()
    {
        emptyBar = GameObject.Find("Hunger Bar 2");
        emptyBar2 = GameObject.Find("Hunger Bar");
        startPos = emptyBar.GetComponent<RectTransform>().localPosition;
        startPos = emptyBar2.GetComponent<RectTransform>().localPosition;
    }

	void Update ()
    {
        if (Input.GetKeyDown(KeyCode.E))
        {
            Eat(10);
        }



        if (hunger < 0)
        {
            hunger = 0;
            // game over!!!!
           // GetComponent<PlayerController>().DieOfStarvation();
        }
        else if(Time.time > lastTimeAte + hungerRechargeTime)
        {
            hunger -= Time.deltaTime * hungerRate;
        }

        var barX = -100 + hunger;

        var slowX = Mathf.SmoothStep(emptyBar2.GetComponent<RectTransform>().localPosition.x, barX, .1f);
        emptyBar.GetComponent<RectTransform>().localPosition = new Vector3(barX, startPos.y, startPos.z);
        emptyBar2.GetComponent<RectTransform>().localPosition = new Vector3(slowX, startPos.y, startPos.z);
    }

    public bool Eat(float FoodToUse)
    {

        //return false;

        hunger += FoodToUse;
        lastTimeAte = Time.time;

        if (hunger > 100)
            hunger = 100;

        return true;
    }
}
