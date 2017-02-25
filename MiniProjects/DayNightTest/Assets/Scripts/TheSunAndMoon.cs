using UnityEngine;
using System.Collections;

public class TheSunAndMoon : MonoBehaviour {
    public Gradient nightDayColor;

    public float maxIntensity = 1f;
    public float minIntensity = 0f;
    

    public Gradient nightDayFogColor;
    public AnimationCurve fogDensityCurve;
    
	public float maxAmbientIntensity = 1f;
	public float minAmbientIntensity = 0f;
    public float dayAtmosphereThickness = 0.4f;
    public float nightAtmosphereThickness = 0.87f;

    public int daySpeed = 0;
    public int nightSpeed = 0;
    public string timeofDay;

    [HideInInspector]
    float minPoint = -0.2f;
    Vector3 dayRotateSpeed;
    Vector3 nightRotateSpeed;
	float fogScale = 1f;
	float skySpeed = 1;

    

    Light mainLight;
    Skybox sky;
    Material skyMat;

    void Start()
    {

        mainLight = GetComponent<Light>();
        skyMat = RenderSettings.skybox;
 	}
	public void time(){
		transform.rotation = Quaternion.Euler (350, 90, 0);
		dayRotateSpeed[0] = daySpeed;
		nightRotateSpeed[0] = nightSpeed;

	}
    void Update()
    {

        float rangeSun = 1 - minPoint;
        float dot = Mathf.Clamp01((Vector3.Dot(mainLight.transform.forward, Vector3.down) - minPoint) / rangeSun);
        float i = ((maxIntensity - minIntensity) * dot) + minIntensity;

        mainLight.intensity = i;
		float j = ((maxAmbientIntensity - minAmbientIntensity) * dot) + minAmbientIntensity;
		RenderSettings.ambientIntensity = j;
		DynamicGI.UpdateEnvironment();

        mainLight.color = nightDayColor.Evaluate(dot);
        RenderSettings.ambientLight = mainLight.color;

        RenderSettings.fogColor = nightDayFogColor.Evaluate(dot);
        RenderSettings.fogDensity = fogDensityCurve.Evaluate(dot) * fogScale;


        i = ((dayAtmosphereThickness - nightAtmosphereThickness) * dot) + nightAtmosphereThickness;
        skyMat.SetFloat("_AtmosphereThickness", i);

        if (dot > 0)
            transform.Rotate(dayRotateSpeed * Time.deltaTime * skySpeed);
        else
            transform.Rotate(nightRotateSpeed * Time.deltaTime * skySpeed);

        float angle = transform.localEulerAngles.x;
        print(angle);
        if (angle > 0f && angle <= 90f) {
            timeofDay = "Day";
        }
        else {
            timeofDay = "Night";
        }


    }


}
