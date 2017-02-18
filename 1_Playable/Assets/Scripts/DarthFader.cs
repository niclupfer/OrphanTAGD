using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class DarthFader : MonoBehaviour {

	public float fadeTime;
	public bool visible = true;

	void Start ()
	{
		// full black
		GetComponent<RawImage> ().color = new Color(0f, 0f, 0f, 1f);

		// fade in finished
		visible = true;
	}

	public void FadeOut ()
	{
		StartCoroutine (Do_FadeOut());
	}

	public void FadeIn (StateCallBack callback)
	{
		StartCoroutine (Do_FadeIn(callback));
	}

	IEnumerator Do_FadeIn(StateCallBack callback)
	{
		visible = true;

		var doneTime = Time.time + fadeTime;

		while (Time.time < doneTime)
		{
			GetComponent<RawImage> ().color = new Color(0f, 0f, 0f, 1f - ((doneTime - Time.time)/fadeTime));
			yield return new WaitForFixedUpdate();
		}

		// full black
		GetComponent<RawImage> ().color = new Color(0f, 0f, 0f, 1f);

		// fade in finished
		callback();

		yield return null;
	}

	IEnumerator Do_FadeOut()
	{
		var doneTime = Time.time + fadeTime;

		while (Time.time < doneTime)
		{
			GetComponent<RawImage> ().color = new Color(0f, 0f, 0f, 0f + ((doneTime - Time.time)/fadeTime));
			yield return new WaitForFixedUpdate();
		}

		// full transparent
		GetComponent<RawImage> ().color = new Color(0f, 0f, 0f, 0f);

		// fade out finished
		visible = false;

		yield return null;
	}
}
