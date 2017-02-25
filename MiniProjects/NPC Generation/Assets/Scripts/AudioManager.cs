using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioManager : MonoBehaviour {

	
	public AudioSource[] SFX;

	// Use this for initialization
	void Start () {
        SFX = GetComponentsInChildren<AudioSource>();
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	public void PlaySFX(AudioClip sfxToPlay, float volumeControl, bool changePitch)
    {
        float randomPitch = 1;

        if (changePitch)
            randomPitch = Random.Range(.85f, 1.15f);

        for (int i = 0; i < SFX.Length; ++i)
        {
            if (!SFX[i].isPlaying)//&& SFX[i].tag == "SFXcontroller")
            {
                SFX[i].pitch = randomPitch;
                SFX[i].PlayOneShot(sfxToPlay, volumeControl);
                break;
            }
        }
    }
}
