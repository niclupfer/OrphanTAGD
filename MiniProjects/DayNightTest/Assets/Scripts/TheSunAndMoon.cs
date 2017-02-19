using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TheSunAndMoon : MonoBehaviour {

    public Gradient nightdaycolor;
    public float lowestSunPoint = -0.2f;
    public float maxIntensity = 2f;
    public float minIntensity = 0.1f;
    public Light sun;
    //public Light moon;

    public float time;
    public float daySpeed;
    public float nightSpeed;
    public string timeOfDay;

    [HideInInspector]
    public float timeMod;
    
    //bool start = false;

    void Start()
    {
        time = 0f;
        //start = true;
        timeOfDay = "midnight";
    }


    void Update()
    {
        UpdateTime();
        UpdateTimeOfDay();
        UpdateLighting();
        UpdateEnvironmentColor();


    }
    void UpdateTime(){

        if (time >= 700f && time <= 1800f)
        {
            timeMod = daySpeed * 50;
        }
        else
        {
            timeMod = nightSpeed*50;
        }
            time += Mathf.RoundToInt(Time.deltaTime * timeMod);

        if (time > 2400f)
        {
            time = time - 2400f;
        }
        
    }

    void UpdateLighting()
    {
        // noon = sun straight down = 90degs x angle  f(1200) = 90
        // f(2400) = 270, f(0) = 270

        // simple thing to change the main light angle based on time of day
        var xAngle = (time - 600f) * 0.15f;
        sun.transform.localRotation = Quaternion.Euler(xAngle, -30f, 0f);
    }

    void UpdateTimeOfDay()
    {
        // Times of day include
        // dawn, morning, noon, afternoon, dust, evening, night, midnight, late night
        var oldTimeOfDay = timeOfDay;

        // i dunno about these specific ranges haha - nic L.
        if ((time > 0 && time < 400) || (time >= 2200 && time <= 2400))
            timeOfDay = "midnight";
        else if (time >= 700 && time < 1100)
            timeOfDay = "morning";
        else if (time >= 1100 && time < 1300)
            timeOfDay = "noon";
        else if (time >= 1300 && time < 1600)
            timeOfDay = "afternoon";
        else if (time >= 1600 && time < 1800)
            timeOfDay = "evening";
        else if (time >= 1800 && time < 2200)
            timeOfDay = "lateNigh";

        // etc. 

        if (timeOfDay != oldTimeOfDay)
        {
            // the time of day changed, trigger time specific events
            // eg. shops open, shops close, street lights turn on

        }
    }
    void UpdateEnvironmentColor()
    {
        float tRange = 1 - lowestSunPoint;
        float dot = Mathf.Clamp01((Vector3.Dot(sun.transform.forward, Vector3.down) - lowestSunPoint) / tRange);
        float i = ((maxIntensity - minIntensity) * dot) + minIntensity;
        Debug.Log(dot);
        sun.intensity = i;
        sun.color = nightdaycolor.Evaluate(dot);
    }
}