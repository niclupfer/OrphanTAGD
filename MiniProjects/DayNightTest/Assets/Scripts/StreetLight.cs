using UnityEngine;
using System.Collections;

public class StreetLight : MonoBehaviour {
	Light mainLight;
	public float maxIntensity;
	public float minIntensity;
	// Use this for initialization
	void Start () {
		mainLight = GetComponent<Light> ();
	}
	
	// Update is called once per frame
	void Update () {
		float range;
		float i = (((maxIntensity - minIntensity)*range) + minIntensity);
		mainLight.intensity = i;
	}
}
