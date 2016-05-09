using UnityEngine;
using UnityEngine.UI;
using System.Collections;

[ExecuteInEditMode]
public class ChangeColor : MonoBehaviour {

	// Use this for initialization
	public void ChangeFirstColor(string name0) {

		GameObject.Find(name0).GetComponent<Renderer>().material.SetColor("_maincolor1",this.GetComponent<Image>().color);
	
	}


	public void ChangeSecondColor(string name1) {

		GameObject.Find(name1).GetComponent<Renderer>().material.SetColor("_maincolor2",this.GetComponent<Image>().color);

	}
}
