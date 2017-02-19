using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Runtime.InteropServices; 

public enum GAME_STATE { title, howTo, playing, over };

public class GameMaster : MonoBehaviour {
	
	public GAME_STATE state;

	DarthFader fader;

	void Start ()
	{
		fader = GameObject.Find ("Fader").GetComponent<DarthFader> ();

        StartState(state);

		// fade in title

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
			if (state == GAME_STATE.title)
			{
				fader.FadeIn (GAME_STATE.howTo);
			}
            else if (state == GAME_STATE.howTo)
            {
                fader.FadeIn(GAME_STATE.playing);
            }
            else if (state == GAME_STATE.over)
            {
                //Debug.Log("Going to title");
                fader.FadeIn(GAME_STATE.title);
            }
        }
	}

    void LoadCity()
    {
        
        GameObject.Find("TheCity").GetComponent<DumbCityGenerator>().GenerateSquareCity();
    }

    void AddPlayer()
    {
        GameObject.Find("Player").GetComponent<PlayerController>().Init();
    }

	public void StartState(GAME_STATE newState)
	{
		GameObject.Find("Title").GetComponent<RawImage>().color = new Color(0f, 0f, 0f, 0f);
		GameObject.Find("HowTo").GetComponent<RawImage>().color = new Color(0f, 0f, 0f, 0f);
		GameObject.Find("Gameover").GetComponent<RawImage>().color = new Color(0f, 0f, 0f, 0f);

		switch (newState)
		{
			case GAME_STATE.title:
                //Debug.Log("starting state: title");
                GameObject.Find("TheCity").GetComponent<DumbCityGenerator>().ClearCity();
                GameObject.Find("Title").GetComponent<RawImage>().color = new Color(1f, 1f, 1f, 1f);
                fader.FadeOut();
                break;

			case GAME_STATE.howTo:
				GameObject.Find("HowTo").GetComponent<RawImage>().color = new Color(1f, 1f, 1f, 1f);
                fader.FadeOut();
                break;

			case GAME_STATE.playing:
                LoadCity();
                AddPlayer();
                fader.FadeOut();
                break;

			case GAME_STATE.over:
				GameObject.Find("Gameover").GetComponent<RawImage>().color = new Color(1f, 1f, 1f, 1f);
                break;
		}

		state = newState;

        
    }
}
