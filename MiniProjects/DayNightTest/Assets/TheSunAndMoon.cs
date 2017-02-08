using UnityEngine;
using System.Collections;

public class TheSunAndMoon : MonoBehaviour {

	Light mainLight;
	public int time;
	public float timeMod;

	public string timeOfDay;

	void Start ()
	{
		time = 0;
		timeOfDay = "midnight";
		mainLight = GetComponent<Light>();
	}
	

	void Update ()
	{
		time += Mathf.RoundToInt(Time.deltaTime * timeMod);

		if (time > 2400)
		{
			time = time - 2400;
		}

		UpdateTimeOfDay ();
		UpdateLighting ();


	}

	void UpdateLighting()
	{
		// noon = sun straight down = 90degs x angle  f(1200) = 90
		// f(2400) = 270, f(0) = 270

		// simple thing to change the main light angle based on time of day

		var xAngle = (time - 600) * 0.15f;

		mainLight.transform.rotation = Quaternion.Euler (xAngle, -30f, 0f);
	}

	void UpdateTimeOfDay()
	{
		// Times of day include
		// dawn, morning, noon, afternoon, dust, evening, night, midnight, late night
		var oldTimeOfDay = timeOfDay;

		// i dunno about these specific ranges haha - nic L.

		if (time > 200 && time < 500)
			timeOfDay = "late night";

		else if (time >= 500 && time < 700)
			timeOfDay = "dawn";

		else if (time >= 700 && time < 1100)
			timeOfDay = "morning";

		else if (time >= 1100 && time < 1300)
			timeOfDay = "noon";

		// etc. 

		if (timeOfDay != oldTimeOfDay) {
			// the time of day changed, trigger time specific events
			// eg. shops open, shops close, street lights turn on

		}


	}
}
