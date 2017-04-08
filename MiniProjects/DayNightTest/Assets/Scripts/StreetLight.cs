using UnityEngine;
using System.Collections;

public class StreetLight : MonoBehaviour
{
    Light mainLight;
    public float maxIntensity = 1.6f;
    public float minIntensity = 0.5f;

    [HideInInspector]
    public float lightDelay = 0.0f;
    public float maxTime = 0.09f;
    
    // Use this for initialization
    void Start()
    {
        //StartCoroutine(updateLight());
        mainLight = GetComponent<Light>();
        
    }

    // Update is called once per frame
    void Update()
    {
        if (lightDelay > maxTime)
        {
            lightDelay = 0;
            float i = Random.Range(minIntensity, maxIntensity);
            mainLight.intensity = i;
        }
        lightDelay += Time.deltaTime;
    }

}

