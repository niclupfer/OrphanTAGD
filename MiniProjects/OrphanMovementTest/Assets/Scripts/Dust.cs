using UnityEngine;
using System.Collections;

public class Dust : MonoBehaviour {

    float startSize;
    public float maxSize;
    public float upSpeed;
    public float lifeTime;

    float birthTime;
    void Start ()
    {
        startSize = transform.localScale.x;
        birthTime = Time.time;
	}
	
	// Update is called once per frame
	void Update () {
        
        // gets bigger
        var newScale = Mathf.Lerp(startSize, maxSize, (Time.time -birthTime) / lifeTime);
        transform.localScale = new Vector3(newScale, newScale, newScale);

        // moves up
        transform.position += new Vector3(0f, upSpeed * Time.deltaTime, 0f);
        transform.forward = -Camera.main.transform.forward;

        // fades out
        var newColor = new Color(1f, 1f, 1f, 1f - (Time.time - birthTime) / lifeTime);
        GetComponent<SpriteRenderer>().color = newColor;

        // dies
        if(Time.time > birthTime + lifeTime)
        {
            Destroy(gameObject);
        }    
    }
}
