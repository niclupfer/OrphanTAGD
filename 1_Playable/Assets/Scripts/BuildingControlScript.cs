using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BuildingControlScript : MonoBehaviour {

    // Use this for initialization


    public GameObject Player;
    void Start()
    {
        InvokeRepeating("CheckAndGenerateChunks", 0, 1);
    }

    void CheckAndGenerateChunks()
    {
        this.transform.localPosition = new Vector3(Player.transform.position.x, 0, Player.transform.position.z);
    }
}
