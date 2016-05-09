using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CorrespondingMaterials : MonoBehaviour {

	public static List<Material> _ListSkin = new List<Material>();
	public List<Material> _Skin = new List<Material>();


	void Update(){

		_ListSkin = _Skin;


	}
}
