using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPCStats : MonoBehaviour {

    // List of prefabs
    [HideInInspector]
    public string NPCName;
    public bool isContextual = true;
    public Material outlined;
    [HideInInspector]
    public Material notOutlined;
    [HideInInspector]
    public float height;
    public GameObject faceCamPos;

    // ~~~~~~~~~~~~~~~~~~~~~~~~~
    //      Personality
    // ~~~~~~~~~~~~~~~~~~~~~~~~~
    [Range(-5, 5)]
    public int athleticism;
    [Range(-5, 5)]
    public int passiveness;
    [Range(-5, 5)]
    public int charitable;
    [Range(-5, 5)]
    public int intelligence;
    [Range(-5, 5)]
    public int social;
    [Range(-5, 5)]
    public int perception;   

    // Use this for initialization
    void Start () {
        if (NPCName == null)
            NPCName = gameObject.name;
        height = GetComponent<CapsuleCollider>().height;
    }
	
 
}
