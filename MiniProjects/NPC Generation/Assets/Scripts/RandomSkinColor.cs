using UnityEngine;
using System.Collections;

public class RandomSkinColor : MonoBehaviour {

	public Material[] materials;

	void Start ()
	{
		GetComponent<SkinnedMeshRenderer>().material = TAGDGame.ChooseRandomFromArray (materials);
	}
}
