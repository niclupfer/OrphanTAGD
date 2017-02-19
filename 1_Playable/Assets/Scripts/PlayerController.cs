﻿using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class PlayerController : MonoBehaviour {
    
    public float speed;
	private float speedMod = 1f;

	private Rigidbody rb;
	private Animator anim;

	public float moveSideways = 0.0f;
	public float moveForward = 0.0f;

	public bool sprinting = false;
	public bool hiding = false;

    public bool nearTable = false;
    public bool loafInHands = false;

    GameObject closestTable;
    GameObject foodInHands;

    public bool dead = false;

    public bool playable = false;

    public GameObject dustObj;
    public float dustInterval;
    float lastDustTime;

    public GameObject eatSoundObj;

	void Start ()
	{
		anim = GetComponentInChildren<Animator>();
		rb = GetComponent<Rigidbody>();
	}

    public void Init()
    {
        transform.position = new Vector3(0, 0.1f, 0);
        dead = false;
        GetComponent<Hunger>().hunger = 100;
        playable = true;
    }
	

	void Update ()
	{
        if (!playable || dead)
        {
            moveSideways = 0;
            moveForward = 0;
            return;
        }

        moveSideways = Input.GetAxis("Horizontal");
        moveForward = Input.GetAxis("Vertical");

        speedMod = 1f;

        if (Input.GetButton("Sprint"))
        {
            sprinting = true;
            speedMod = 1.5f;
        }
        else
        {
            sprinting = false;
        }

        if (Input.GetButton("Crouch"))
        {
            hiding = true;
            speedMod = 0.5f;
        }
        else
        {
            hiding = false;
        }
        anim.SetBool("Hiding", hiding);

        if (Input.GetButtonDown("Jump"))
        {
            anim.SetTrigger("Dab");
        }


        if ((moveForward != 0 || moveSideways != 0) && lastDustTime + dustInterval < Time.time)
            MakeDust();

        if(loafInHands == true)
        {
            ShowEatText();
            if (Input.GetButtonDown("Interact"))
            {
                StartCoroutine(EatLoaf());
            }
        }
        else if (nearTable == true)
        {
            ShowStealText();
            if (Input.GetButtonDown("Interact"))
            {
                StealLoaf(closestTable);
            }
        }
        else
        {
            HideAllText();
        }
        
    }

    void StealLoaf(GameObject tableObj)
    {        
        loafInHands = true;
        foodInHands = tableObj.GetComponent<ShopTable>().StealFood();

        // move the loaf
        foodInHands.transform.parent = transform;
        foodInHands.GetComponent<LoafPickup>().inPlayerHands = true;
        foodInHands.GetComponent<LoafRotation>().onDisplay = false;
        foodInHands.GetComponent<LoafPickup>().hand = GameObject.Find("Forearm_R").transform;
    }

    IEnumerator EatLoaf()
    {
        Instantiate(eatSoundObj);       

        playable = false;

        yield return new WaitForSeconds(3);

        GetComponent<Hunger>().hunger += foodInHands.GetComponent<LoafPickup>().nuritionalValue;
        if (GetComponent<Hunger>().hunger > 100)
            GetComponent<Hunger>().hunger = 100;

        playable = true;
        loafInHands = false;
        Destroy(foodInHands);
        foodInHands = null;
    }

	void FixedUpdate()
	{
 
            rb.angularVelocity = Vector3.zero;

        //var flatForward = new Vector3(transform.forward.x, 0f, transform.forward.z);
        //var flatRight = new Vector3(transform.right.x, 0f, transform.right.z);

        
        var flatForward = new Vector3(Camera.main.transform.forward.x, 0f, Camera.main.transform.forward.z);
        var flatRight = new Vector3(Camera.main.transform.right.x, 0f, Camera.main.transform.right.z);

        

        var moveF = flatForward * moveForward * Time.deltaTime;
		var moveS = flatRight * moveSideways * Time.deltaTime;

        if (moveForward != 0 || moveSideways != 0)
        {
            transform.rotation = Quaternion.LookRotation(moveF + moveS);
        }

        anim.SetFloat ("Speed", (moveF.magnitude + moveS.magnitude) * speed * speedMod);

		rb.velocity = (moveF + moveS) * speed * speedMod;
	}

    void MakeDust()
    {
        var dust = Instantiate(dustObj);
        dust.transform.position = transform.position;
        lastDustTime = Time.time;
    }

    public void DieOfStarvation()
    {
        if (!dead)
        {
            dead = true;
            HideAllText();
            loafInHands = false;
            if (foodInHands != null)
                Destroy(foodInHands);

            // game over blargh!
            //GameObject.Find("Fader").GetComponent<DarthFader>().FadeIn(GAME_STATE.over);
            GameObject.Find("GameMaster").GetComponent<GameMaster>().StartState(GAME_STATE.over);
        }
    }

    void HideAllText()
    {
        GameObject.Find("StealText").GetComponent<Text>().color = new Color(0f, 0f, 0f, 0f);
        GameObject.Find("EatText").GetComponent<Text>().color = new Color(0f, 0f, 0f, 0f);
    }

    void ShowEatText()
    {
        HideAllText();
        GameObject.Find("EatText").GetComponent<Text>().color = new Color(0f, 0f, 0f, 1f);
    }

    void ShowStealText()
    {
        HideAllText();
        GameObject.Find("StealText").GetComponent<Text>().color = new Color(0f, 0f, 0f, 1f);
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.tag == "ShopTable")
        {
            if (other.GetComponent<ShopTable>().HasFood())
            {
                closestTable = other.gameObject;
                nearTable = true;
            }
            else
                nearTable = false;
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.tag == "ShopTable")
        {
            nearTable = false;
        }
    }
}
