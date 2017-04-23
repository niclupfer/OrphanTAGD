using UnityEngine;
using System.Collections;

public class RandomMaterialNPC : MonoBehaviour {

	public Material[] materials;
    private Material chosen;

	void Start ()
	{
        chosen = TAGDGame.ChooseRandomFromArray(materials);
        GetComponent<SkinnedMeshRenderer>().material = chosen;
        transform.parent.gameObject.GetComponent<NPCStats>().notOutlined = chosen;
	}
}
