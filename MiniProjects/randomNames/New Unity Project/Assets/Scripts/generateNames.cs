using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class generateNames : MonoBehaviour {

	public Button nameButton;
	public string[] stringArray;

	// Use this for initialization
	void Start () {
		Button btn = nameButton.GetComponent<Button>();
		btn.onClick.AddListener(printName);
		for(int i = 0; i < 10; i++){
			stringArray[i] = ("Hello!"+i);
		}
	}

	void printName() {
		Debug.Log(stringArray[Random.Range(0,9)]);
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
