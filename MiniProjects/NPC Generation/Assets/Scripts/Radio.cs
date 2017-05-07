using UnityEngine;
using System.Collections;

public class Radio : MonoBehaviour {


	public AudioClip[] songs;

	AudioSource audio;

	void Start()
	{
		audio = GetComponent<AudioSource>();
		PlayRandomSong ();
	}

	void PlayRandomSong()
	{
		audio.clip = songs[Random.Range(0, songs.Length)];
		audio.Play();
	}

	void Update()
	{
		if (!audio.isPlaying)
		{
			PlayRandomSong ();
		}
	}

}
