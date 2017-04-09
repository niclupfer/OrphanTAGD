using UnityEngine;
using System.Collections;

public class ShopTable : MonoBehaviour {

    public GameObject foodObj;
    public GameObject baker;

    public GameObject currentFood;

    public bool hasFood;
    public float bakeTime;
    float nextLoaf;
    
	void Start ()
    {
        BakeLoaf();
	}
	
	void Update ()
    {
        if (hasFood == false && Time.time > nextLoaf)
        {
            BakeLoaf();
        }
	}

    void BakeLoaf()
    {
        currentFood = Instantiate(foodObj);
        currentFood.transform.parent = transform;
        currentFood.transform.localPosition = new Vector3(0, 2.7f, 0);

        hasFood = true;
    }

    public GameObject StealFood()
    {
        nextLoaf = Time.time + bakeTime;
        hasFood = false;
        baker.GetComponent<BakerAI>().StartChase();

        return currentFood;
    }

    public bool HasFood()
    {
        return hasFood;
    }
}
