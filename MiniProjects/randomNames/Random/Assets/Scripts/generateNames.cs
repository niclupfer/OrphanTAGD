using System;
using System.Collections;
using UnityEngine;
using UnityEngine.UI;

public class generateNames : MonoBehaviour {

	public Button nameButton;
	public Button cityButton;

	public Text cityText;
	public Text nameText;

	private string[] fnPArray = {"Little", "The Great", "Sir"};
	private string[] fnArray = {"Peter", "John", "Sam", "Joe", "Robert", "Philip", "David", "Thomas", "Nick", "Fred", "Edgar", "Franklin", "Tony", "Anthony"};
	private string[] lnArray = {"Smith", "Roberts", "Jones", "Michaels"};
	private string[] lnSArray = {"son", "sburg", "ton", "by"};
	private string[] lnTArray = {"The Bold", "The Daring", "The Flatulent", "The Penniless"};

	private string[] cityPArray = {"New", "Fort", "San", "South", "Saint", "Las", "Los", "North", "South"};
	private string[] cityRArray = {"Bronx", "Spring", "York", "Peters", "Hampton", "Farts", "Butts"};
	private string[] citySArray = {" Springs", "land", "opolis", "sburgh", "sberg", "ville", "caster", "chester", "dale"};

	// Use this for initialization
	void Start () {
		nameButton = nameButton.GetComponent<Button>();
		nameText = nameText.GetComponent<Text>();

		cityButton = cityButton.GetComponent<Button>();
		cityText = cityText.GetComponent<Text>();

		nameButton.onClick.AddListener(printName);
		cityButton.onClick.AddListener(printCity);
	}



	string getFirstName(string[] arg){
		string fn = arg[UnityEngine.Random.Range(0,arg.Length)];
		return fn;
	}

	string getFirstNameSpecial(string[] arg1, string[] arg2){
		string fnPrefix = arg1[UnityEngine.Random.Range(0,arg1.Length)];
		string fnRoot = arg2[UnityEngine.Random.Range(0,arg2.Length)];
		string firstName = String.Concat(fnPrefix, " ", fnRoot);
		return firstName;
	}

	string getLastName(string[] arg1){
		string lastName = arg1[UnityEngine.Random.Range(0,arg1.Length)];
		return lastName;
	}

	string getLastNameSpecial(string[] arg1, string[] arg2, string[] arg3){
		int choice = UnityEngine.Random.Range(0,2);
		if (choice == 1){
			string lnRoot = arg1[UnityEngine.Random.Range(0,arg1.Length)];
			string lnSuffix = arg2[UnityEngine.Random.Range(0,arg2.Length)];
			if (lnRoot[(lnRoot.Length)-1] == lnSuffix[0]){
				lnSuffix.TrimStart(lnSuffix[0]);
			}
			string lastName = String.Concat(lnRoot,lnSuffix);
			return lastName;
		}
		else {
			string lastName = arg3[UnityEngine.Random.Range(0,arg3.Length)];
			return lastName;
		}
	}




	string getCityPrefix(string[]arg){
		string prefix = arg[UnityEngine.Random.Range(0,arg.Length)];
		return prefix;
	}
	string getCityRoot(string[] arg){
		string city = arg[UnityEngine.Random.Range(0,arg.Length)];
		return city;
	}
	string getCityRootSpecial(string[] arg1, string[] arg2){
		string cityRoot = arg1[UnityEngine.Random.Range(0,arg1.Length)];
		string citySuffix = arg2[UnityEngine.Random.Range(0,arg2.Length)];

		if (cityRoot[(cityRoot.Length)-1] == citySuffix[0]){
			citySuffix.TrimStart(citySuffix[0]);
		}

		string fullCity = String.Concat(cityRoot, citySuffix);
		return fullCity;
	}


	void printName() {
		string firstName = "VOID";
		string lastName = "VOID";

		int choice = UnityEngine.Random.Range(0,2);
		if (choice == 1){
			firstName = getFirstNameSpecial(fnPArray, fnArray);
		}
		else {
			firstName = getFirstName(fnArray);
		}


		choice = UnityEngine.Random.Range(0,2);
		if (choice == 1){
			lastName = getLastNameSpecial(lnArray, lnSArray, lnTArray);
		}
		else {
			lastName = getLastName(lnArray);
		}


		string fullName = String.Concat(firstName, " ", lastName);
		nameText.text = fullName;
	}

	void printCity(){
		string cityPrefix = "VOID";
		string cityRoot = "VOID";

		int choice = UnityEngine.Random.Range(0,2);
		if (choice == 1){
			cityPrefix = getCityPrefix(cityPArray);
		}
		else {
			cityPrefix = "";
		}

		choice = UnityEngine.Random.Range(0,2);
		if (choice == 1){
			cityRoot = getCityRootSpecial(cityRArray, citySArray);
		}
		else {
			cityRoot = getCityRoot(cityRArray);
		}

		string cityFull = String.Concat(cityPrefix," ",cityRoot);

		cityText.text = cityFull;
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
