using UnityEngine;
using System.Collections;

public class DestroyAfterTime : MonoBehaviour {

    public float lifeTime;
    float deathTime;

    void Start()
    {
        deathTime = Time.time + lifeTime;
    }

    void Update()
    {
        if (Time.time > deathTime)
            Destroy(gameObject);
    }
}
