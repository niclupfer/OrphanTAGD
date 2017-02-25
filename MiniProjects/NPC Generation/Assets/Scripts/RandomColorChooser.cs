using UnityEngine;
using System.Collections;

public class RandomColorChooser : MonoBehaviour {

	public Material[] materials;

	void Start ()
	{
		GetComponent<MeshRenderer>().material = TAGDGame.ChooseRandomFromArray (materials);
	}
}
