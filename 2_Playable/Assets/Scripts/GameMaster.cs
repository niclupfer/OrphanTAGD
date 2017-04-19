using UnityEngine;
using UnityEngine.UI;
using System.Collections;
using System.Runtime.InteropServices;
using UnityEngine.SceneManagement;

public enum GAME_STATE { title, poem, howTo, playing, switching, over };

public class GameMaster : MonoBehaviour
{

    public GAME_STATE state;

    public bool paused;

    DarthFader fader;

    public float screenTime = 1f;
    public float lastSwitch;

    void Start()
    {
        fader = GameObject.Find("Fader").GetComponent<DarthFader>();

        paused = false;

        GameObject.Find("Title").GetComponent<RawImage>().color = new Color(0f, 0f, 0f, 0f);
        GameObject.Find("HowTo").GetComponent<RawImage>().color = new Color(0f, 0f, 0f, 0f);

        //Time.timeScale = 0f;
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

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape))
        {
            // quit the game
            Application.Quit();
        }

        if (Input.GetKeyDown(KeyCode.Return)
            || Input.GetKeyDown(KeyCode.Joystick1Button6)
            || Input.GetKeyDown(KeyCode.Joystick1Button7))
        {
            if (paused)
            {
                Time.timeScale = 1f;
                paused = false;
                GameObject.Find("HowTo").GetComponent<RawImage>().color = new Color(0f, 0f, 0f, 0f);
            }
            else
            {
                paused = true;
                Time.timeScale = 0f;
                GameObject.Find("HowTo").GetComponent<RawImage>().color = new Color(1f, 1f, 1f, 1f);
            }
        }


        if (Input.anyKeyDown && Time.time > lastSwitch + screenTime)
        {
            lastSwitch = Time.time;

            if (state == GAME_STATE.title)
            {
                StartState(GAME_STATE.howTo);
            }
            else if (state == GAME_STATE.howTo)
            {
                //fader.FadeIn(GAME_STATE.playing);
                StartState(GAME_STATE.playing);
            }
            else if (state == GAME_STATE.over)
            {
                //Debug.Log("Going to title");
                //fader.FadeIn(GAME_STATE.title);
                //StartState(GAME_STATE.title);

                //SceneManager.LoadScene("Act1");
                //Application.Quit();
            }
        }
    }

    public void StartState(GAME_STATE newState)
    {
        switch (newState)
        {
            case GAME_STATE.title:
                Debug.Log("starting state: title");
                GameObject.Find("Title").GetComponent<RawImage>().color = new Color(1f, 1f, 1f, 1f);
                fader.FadeOut();
                break;

            case GAME_STATE.howTo:
                fader.FadeOutThenIn("Title", "HowTo");
                GameObject.Find("HowTo").GetComponent<RawImage>().color = new Color(1f, 1f, 1f, 1f);
                //fader.FadeOut();
                break;

            case GAME_STATE.playing:
                //ReloadScene();
                fader.FadeOutThing("HowTo");
                fader.FadeOut();
                break;

            case GAME_STATE.over:
                break;
        }

        state = newState;


    }
}