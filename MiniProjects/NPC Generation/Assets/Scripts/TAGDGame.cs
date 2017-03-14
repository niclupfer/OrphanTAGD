using UnityEngine;
using System.Collections;

public static class TAGDGame {
    public static bool paused = false;

	public static T ChooseRandomFromArray<T>(T[] array)
	{
		return array[Random.Range(0, array.Length)];
	}

    public static void Pause(Camera main, Camera script, GameObject target, GameObject player)
    {
        if (Time.timeScale != 0f)
        {
            Time.timeScale = 0f;
            paused = true;
            main.enabled = false;
            script.enabled = true;
        }
        else
        {
            Time.timeScale = 1f;
            paused = false;
            main.enabled = true;
            script.enabled = false;
        }
        Time.fixedDeltaTime = .02f * Time.timeScale;
               
    }
}