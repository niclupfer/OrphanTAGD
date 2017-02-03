using UnityEngine;
using System.Collections;

public class Car : MonoBehaviour {
    
    DumbCityGenerator city;
    Street currentStreet;

	void Start ()
    {
        city = GameObject.Find("TheCity").GetComponent<DumbCityGenerator>();
        currentStreet = city.GetStreetWithStart(new Vector3(transform.position.x, 0f, transform.position.z));
        SetRotation();
    }

    void SetRotation()
    {
        switch (currentStreet.direction)
        {
            case "north":
                transform.rotation = Quaternion.Euler(0f, 0f, 0f);
                break;

            case "south":
                transform.rotation = Quaternion.Euler(0f, 180f, 0f);
                break;

            case "east":
                transform.rotation = Quaternion.Euler(0f, 270f, 0f);
                break;

            case "west":
                transform.rotation = Quaternion.Euler(0f, 90f, 0f);
                break;
        }
    }
	
	void Update ()
    {
        if(transform.position == currentStreet.end)
        {
            // if its at the end of a street, stop, choose a direction, turn or go straight

            // TODO - wait

            // chose a turn
            var newDirection = ChooseTurn();
        }
        else
        {
            // move towards street end

        }



    }
}
