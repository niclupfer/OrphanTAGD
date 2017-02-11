using UnityEngine;
using System.Collections;

public static class TAGDGame {

	public static T ChooseRandomFromArray<T>(T[] array)
	{
		return array[Random.Range(0, array.Length)];
	}

}