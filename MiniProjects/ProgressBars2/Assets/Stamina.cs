using UnityEngine;
using System.Collections;

public class Stamina : MonoBehaviour {
    GameObject emptyBar;
    GameObject emptyBar2;
    public float stamina = 100;
    public float StaminaRate;
    public float exhaustion;
    public float slowerRate;
    // Use this for initialization
    Vector3 startPos;

    public float staminaRechargeTime;

    float lastTimeUsed;

    private void Start()
    {
        emptyBar = GameObject.Find("Stamina Bar");
        emptyBar2 = GameObject.Find("Slower bar");
        startPos = emptyBar.GetComponent<RectTransform>().localPosition;
        startPos = emptyBar2.GetComponent<RectTransform>().localPosition;
    }

    // Update is called once per frame
    void Update ()
    {
        if (Input.GetKey(KeyCode.LeftShift))
        {
            UseStamina(Time.deltaTime * exhaustion);            
        }
        if (Input.GetKeyDown(KeyCode.Space))
        {
            UseStamina(5);
        }


        /////////

        /*
        if (Input.GetKey(KeyCode.LeftShift))
        {
            stamina -= Time.deltaTime * exhaustion;
            emptyBar.GetComponent<RectTransform>().localPosition = new Vector3(stamina, startPos.y, startPos.z);
        }
        if (Input.GetKey(KeyCode.Space))
        {
            stamina = stamina - 5;
            emptyBar.GetComponent<RectTransform>().localPosition = new Vector3(stamina, startPos.y, startPos.z);
      
        }*/

        if (stamina < 100 && Time.time > lastTimeUsed + staminaRechargeTime) // and its been rechargeTime since last stamina use, then recharge
        {
            stamina += Time.deltaTime * StaminaRate;
        }
        if (stamina > 100)
        {
            stamina = 100;
        }

        var barX = -100 + stamina;
        emptyBar.GetComponent<RectTransform>().localPosition = new Vector3(barX, startPos.y, startPos.z);

        // the slow bar
        var slowX = Mathf.SmoothStep(emptyBar2.GetComponent<RectTransform>().localPosition.x, barX, 0.03f);
        emptyBar2.GetComponent<RectTransform>().localPosition = new Vector3(slowX, startPos.y, startPos.z);
    }

    public bool UseStamina(float staminaToUse)
    {
  
         //return false;

        stamina -= staminaToUse;
        lastTimeUsed = Time.time;
        
        return true;
    }
}
