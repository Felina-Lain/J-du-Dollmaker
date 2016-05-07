using UnityEngine;
using UnityEngine.UI;
using System.Collections;

[ExecuteInEditMode]
public class ChangeColor : MonoBehaviour {

	// Use this for initialization
	public void ChangeSkin() {
		
		GameObject.Find("skin").GetComponent<Renderer>().material.SetColor("_maincolor",this.GetComponent<Image>().color);
	
	}

	public void ChangeHair() {

		GameObject.Find("hair").GetComponent<Renderer>().material.SetColor("_maincolor",this.GetComponent<Image>().color);

	}

	public void ChangeWings() {

		GameObject.Find("wing").GetComponent<Renderer>().material.SetColor("_maincolor",this.GetComponent<Image>().color);

	}

	public void ChangeClothes() {

		GameObject.Find("clothe").GetComponent<Renderer>().material.SetColor("_maincolor",this.GetComponent<Image>().color);

	}

	public void ChangeItems() {

		GameObject.Find("item").GetComponent<Renderer>().material.SetColor("_maincolor",this.GetComponent<Image>().color);

	}

	public void ChangeShoes() {

		GameObject.Find("shoe").GetComponent<Renderer>().material.SetColor("_maincolor",this.GetComponent<Image>().color);

	}
}
