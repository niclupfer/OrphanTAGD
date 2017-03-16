using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.IO;

public class DialogManager : MonoBehaviour {

    // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    // CONSTANTS YO - CHANGE THESE TO ADD OR REMOVE THE TYPES OR PERSONALITIES
    // ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~        
    enum NPC_NAMES {adultMaleNPC, childMaleNPC};    // name of NPC prefab (MUST BE EXACT)
    readonly string[] NPC_TYPES = {"Any NPC", "Male Adult", "Male Child" };
    readonly string[] NPC_PERSONALITIES = {"Neutral", "Sympathetic", "Aggressive", "Excited", "Depressed", "Happy"};
    readonly string[] NPC_VARIABLES = {"_name_", "_equippedItem_", "_neighborhood_", "_timeOfDay_", "_hat_", "_orphanGang_"};

    public class Dialogue
    {
        public string type;
        public string personality;
        public string phrase;
        public string var1;
        public string var2;
        public string print() { return phrase; }
    }

    public string NPCPhrase;    
    public string NPCType;    
    public string NPCPersonality;

    public TextAsset randomNPCText;    

    public Camera main;
    public Camera conversationCam;
    public GameObject TalkBox;
    public GameObject ContinueButton;
    public Sprite[] continueIcon;

    public List<Dialogue> phrases = new List<Dialogue>();

    private int iconIter;
    private bool changeImage = true;
    public float iterSpeed = .2f;

    void Start()
    {        
        ParseData();
        if (phrases == null)
            Debug.Log("File Not Found");
        else
            Debug.Log(phrases[0].print() + phrases[1].print() + phrases[6].var1 + phrases[6].var2);
        NPCType = phrases[0].type;
        NPCPersonality = phrases[0].personality;
        NPCPhrase = phrases[0].phrase;
    }


    void ParseData()
    {

        var text = randomNPCText.text;
        var splitText = text.Split('\n');
        for (int i = 0; i < splitText.Length; ++i)
        {
            var splitByTab = splitText[i].Split('\t');
            var dialogue = new Dialogue();
            if (System.Array.IndexOf(NPC_TYPES, splitByTab[0]) != -1)
            {
                dialogue.type = splitByTab[0];
            }
            else Debug.Log("Incorrect Type detected");
            if (System.Array.IndexOf(NPC_PERSONALITIES, splitByTab[1]) != -1)
            {
                dialogue.personality = splitByTab[1];
            }
            else Debug.Log("Incorrect Personality detected");

            // checks to see if variables are used in phrase. only up to variables allowed!
            for (int j = 0; j < NPC_VARIABLES.Length; ++j)
            {
                if (splitByTab[2].Contains(NPC_VARIABLES[j]))
                {
                    Debug.Log("Contains variable" + NPC_VARIABLES[j]);
                    if (dialogue.var1 == null)
                        dialogue.var1 = NPC_VARIABLES[j];
                    else
                        dialogue.var2 = NPC_VARIABLES[j];
                }
            }
            dialogue.phrase = splitByTab[2];
            phrases.Add(dialogue);
        }
    }

    void Update()
    {
        if (TalkBox.activeSelf && changeImage)
        {
            if (iconIter == 3)
                iconIter = 0;
            else
                ++iconIter;

            ContinueButton.GetComponent<Image>().sprite = continueIcon[iconIter];
            StartCoroutine(ImageChangeDelay());
        }
    }

    IEnumerator ImageChangeDelay()
    {
        changeImage = false;
        yield return new WaitForSeconds(iterSpeed);
        changeImage = true;
    }

    public void ShowTalkBox(GameObject obj)
    {        
        var stats = obj.GetComponent<NPCStats>();
        var name = stats.NPCName;
        GetSpeech(stats);
        if (name == "childMaleNPC")
        {
            TalkBox.GetComponent<RectTransform>().anchorMax = new Vector2(0.85f, 0.9f);
            TalkBox.GetComponent<RectTransform>().anchorMin = new Vector2(0.15f, 0.7f);
        }
        else if (name == "adultMaleNPC")
        {
            TalkBox.GetComponent<RectTransform>().anchorMax = new Vector2(0.85f, 0.3f);
            TalkBox.GetComponent<RectTransform>().anchorMin = new Vector2(0.15f, 0.1f);
        }
        TalkBox.SetActive(true);
    }

    public void HideTalkBox()
    {
        TalkBox.SetActive(false);
    }

    public void GetSpeech(NPCStats stats)
    {
        // need to implement Personality matrix still, for now random from array          
        var name = stats.NPCName;
        var personality = NPC_PERSONALITIES[Random.Range(0, NPC_PERSONALITIES.Length)];
        switch (name)
        {
            case "childMaleNPC":
                name = "Male Child";
                break;
            case "adultMaleNPC":
                name = "Male Adult";
                break;
        }

        // Find matching dialogue for personality / type
        List<Dialogue> matched = new List<Dialogue>();
        for(int i = 0; i < phrases.Count; ++i)
        {
            if ((phrases[i].type == "Any NPC" || phrases[i].type == name) && (phrases[i].personality == "Neutral" || phrases[i].personality == personality))
                matched.Add(phrases[i]);
        }
        var chosenDialogue = matched[Random.Range(0, matched.Count)];
    // IMPLEMENT VARIABLE REPLACEMENT HERE
    ReplaceVariable();
        TalkBox.GetComponentInChildren<Text>().text = chosenDialogue.phrase;

    }

    public void ReplaceVariable()
    {

    }
    public void ToggleCameras()
    {
        main.enabled = !main.enabled;
        conversationCam.enabled = !conversationCam.enabled;
    }


}
