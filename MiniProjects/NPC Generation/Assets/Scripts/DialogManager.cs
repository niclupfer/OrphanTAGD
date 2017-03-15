using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System.IO;

public class DialogManager : MonoBehaviour {

    // add constant values EXACTLY from csv to ensure correct type
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

    // different NPC types go here
    public string[][] adultMale;
    public string[][] childMale;

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
        GetCSVData();
        if (phrases == null)
            Debug.Log("File Not Found");
        else
            Debug.Log(phrases[0].print());
        NPCType = phrases[0].type;
        NPCPersonality = phrases[0].personality;
        NPCPhrase = phrases[0].phrase;
    }

   
   void GetCSVData()
    {
        if (System.IO.File.Exists(Application.dataPath + "/RandomNPCDialogue.csv")) {
            var fs = File.OpenRead(Application.dataPath + "/RandomNPCDialogue.csv");
            var reader = new StreamReader(fs);
            while (!reader.EndOfStream)
            {
                var dialogue = new Dialogue();
                var line = reader.ReadLine();
                var values = line.Split(';');
                Debug.Log(values[1]);
                if (System.Array.IndexOf(NPC_TYPES, values[0]) != -1)
                {
                    dialogue.type = values[0];
                }
                else Debug.Log("Incorrect Type detected");
                if (System.Array.IndexOf(NPC_PERSONALITIES, values[1]) != -1)
                {
                    dialogue.personality = values[1];
                }
                else Debug.Log("Incorrect Personality detected");

                // checks to see if variables are used in phrase
           /*     for(int i = 0; i < NPC_VARIABLES.Length; ++i)
                {
                    if (values[2].Contains(NPC_VARIABLES[i]))
                    {
                        if (dialogue.var1 == "")
                            dialogue.var1 = NPC_VARIABLES[i];
                        else
                            dialogue.var2 = NPC_VARIABLES[i];
                    }
                }/*/
                dialogue.phrase = values[2];
                phrases.Add(dialogue);
            }
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

    public void GetTalkBox(string name)
    {
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

    public void ToggleCameras()
    {
        main.enabled = !main.enabled;
        conversationCam.enabled = !conversationCam.enabled;
    }


}
