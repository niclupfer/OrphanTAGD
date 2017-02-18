using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Runtime.InteropServices; 

public enum GAME_STATE { title, howTo, playing, over };

public delegate void StateCallBack(GAME_STATE newState);  

public class GameMaster : MonoBehaviour {
	
	public GAME_STATE state;

	DarthFader fader;

	void Start ()
	{
		fader = GameObject.Find ("Fader").GetComponent<DarthFader> ();

		state = GAME_STATE.title;

		// fade in title
		fader.FadeOut();

		// wait for click or key press

		// fade out title
		// fade in how to play

		// wait for click or key press

		// fade out how to play

		// create city
			// blocks
			// buildings
			// cars
			// hurdles - trashcans, crates
			// shops
				// table + food
				// radio
				// baker

		// create and enable player

		// start game stuff
			// radios play
			// player gets hungry
			// bakers ready to chase thiefs

		// wait for player to starve

		// fade out game
		// fade in game over

		// wait for click or key press

		// fade out game over
		// fade in title and repeat
	}
	
	void Update ()
	{
		if (Input.GetKeyDown (KeyCode.Escape))
		{
			// quit the game
			Application.Quit();
		}

		if (!fader.visible && Input.anyKeyDown)
		{
			if (state == Game_STATE.title)
			{
				StateCallBack cb = new StateCallBack (GameMaster.StateState (GAME_STATE.howTo));
				fader.FadeIn (cb);
			}
		}
	}

	public void StartState(GAME_STATE newState)
	{
		GameObject.Find("Title").GetComponent<RawImage>().color = new Color(0f, 0f, 0f, 0f);
		GameObject.Find("HowTo").GetComponent<RawImage>().color = new Color(0f, 0f, 0f, 0f);
		GameObject.Find("Title").GetComponent<RawImage>().color = new Color(0f, 0f, 0f, 0f);

		switch (newState)
		{
			case GAME_STATE.title:
				GameObject.Find("Title").GetComponent<RawImage>().color = new Color(0f, 0f, 0f, 1f);
				break;

			case GAME_STATE.howTo:
				GameObject.Find("HowTo").GetComponent<RawImage>().color = new Color(0f, 0f, 0f, 1f);
				break;

			case GAME_STATE.playing:
				
				break;

			case GAME_STATE.over:
				GameObject.Find("Gameover").GetComponent<RawImage>().color = new Color(0f, 0f, 0f, 1f);
				break;
		}

		state = newState;
	}
}
