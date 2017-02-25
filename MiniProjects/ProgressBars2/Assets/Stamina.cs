using UnityEngine;
using System.Collections;

public class Stamina : MonoBehaviour {
    GameObject emptyBar;
    public float stamina = 100;
    public float StaminaRate;
    public float exhaustion;
    // Use this for initialization
    Vector3 startPos;

    public float staminaRechargeTime;

    float lastTimeUsed;

    private void Start()
    {
        emptyBar = GameObject.Find("Stamina Empty");
        startPos = emptyBar.GetComponent<RectTransform>().localPosition;
    }

    // Update is called once per frame
    void Update ()
    {
        if (Input.GetKey(KeyCode.LeftShift))
        {
            UseStamina(Time.deltaTime * exhaustion);
            emptyBar.GetComponent<RectTransform>().localPosition = new Vector3(stamina, startPos.y, startPos.z);
        }
        if (Input.GetKeyDown(KeyCode.Space))
        {
            UseStamina(5);
            emptyBar.GetComponent<RectTransform>().localPosition = new Vector3(stamina, startPos.y, startPos.z);
        }

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
            emptyBar.GetComponent<RectTransform>().localPosition = new Vector3(stamina, startPos.y, startPos.z);
        }
        if (stamina > 100)
        {
            stamina = 100;
            emptyBar.GetComponent<RectTransform>().localPosition = new Vector3(stamina, startPos.y, startPos.z);
        }

    }

    public bool UseStamina(float staminaToUse)
    {
  
         //return false;

        stamina -= staminaToUse;
        lastTimeUsed = Time.time;
        
        return true;
    }
}
