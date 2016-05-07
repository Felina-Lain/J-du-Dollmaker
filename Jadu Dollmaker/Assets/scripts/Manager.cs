using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;

[ExecuteInEditMode]
public class Manager : MonoBehaviour {

	public BinaryFormatter bf;

	public void Saving(){

		SavedData dataa = new SavedData();
		for (int i = 0; i < CorrespondingMaterials._ListSkin.Count; i++){

			if( GameObject.Find("skin").GetComponent<Renderer>().material.name.Contains(CorrespondingMaterials._ListSkin[i].name)){				
				dataa._skin = i;}

			if( GameObject.Find("hair").GetComponent<Renderer>().material.name.Contains(CorrespondingMaterials._ListSkin[i].name)){				
				dataa._hair = i;}
			
			if( GameObject.Find("wing").GetComponent<Renderer>().material.name.Contains(CorrespondingMaterials._ListSkin[i].name)){				
					dataa._wings= i;}
			
			if( GameObject.Find("item").GetComponent<Renderer>().material.name.Contains(CorrespondingMaterials._ListSkin[i].name)){				
				dataa._items = i;}
			
			if( GameObject.Find("clothe").GetComponent<Renderer>().material.name.Contains(CorrespondingMaterials._ListSkin[i].name)){				
				dataa._clothes = i;}
			
			if( GameObject.Find("shoe").GetComponent<Renderer>().material.name.Contains(CorrespondingMaterials._ListSkin[i].name)){				
				dataa._shoes = i;}
			
		}
			
		Feed (dataa.C_skin, "skin");

		Feed (dataa.C_hair, "hair");

		Feed (dataa.C_wings, "wing");

		Feed (dataa.C_items, "item");

		Feed (dataa.C_clothes, "clothe");

		Feed (dataa.C_shoes, "shoe");

		BinaryFormatter bf = new BinaryFormatter();
		FileStream file = File.Create (Application.persistentDataPath + "/savedGames.bananasplit");
		bf.Serialize(file, dataa);
		file.Close();


	}

	public void Feed(float[] arrayColor, string goName)
	{
		Color color1 = GameObject.Find (goName).GetComponent<Renderer> ().material.GetColor ("_maincolor");
		arrayColor [0] = color1.r;
		arrayColor [1] = color1.g;
		arrayColor [2] = color1.b;
		arrayColor [3] = color1.a;

	}

	public void Loading(){

		print("Save Path" + Application.persistentDataPath);

		if(File.Exists(Application.persistentDataPath + "/savedGames.bananasplit")) {
			BinaryFormatter bf = new BinaryFormatter();
			FileStream file = File.Open(Application.persistentDataPath + "/savedGames.bananasplit", FileMode.Open);
			SavedData dataa = (SavedData)bf.Deserialize(file);

			GameObject.Find("skin").GetComponent<MeshRenderer>().material = CorrespondingMaterials._ListSkin[dataa._skin];
			GameObject.Find("skin").GetComponent<Renderer>().material.SetColor("_maincolor", new Color (dataa.C_skin[0], dataa.C_skin[1], dataa.C_skin[2], dataa.C_skin[3]));

			GameObject.Find("hair").GetComponent<MeshRenderer>().material = CorrespondingMaterials._ListSkin[dataa._hair];
			GameObject.Find("hair").GetComponent<Renderer>().material.SetColor("_maincolor", new Color (dataa.C_hair[0], dataa.C_hair[1], dataa.C_hair[2], dataa.C_hair[3]));

			GameObject.Find("wing").GetComponent<MeshRenderer>().material = CorrespondingMaterials._ListSkin[dataa._wings];
			GameObject.Find("wing").GetComponent<Renderer>().material.SetColor("_maincolor", new Color (dataa.C_wings[0], dataa.C_wings[1], dataa.C_wings[2], dataa.C_wings[3]));

			GameObject.Find("clothe").GetComponent<MeshRenderer>().material = CorrespondingMaterials._ListSkin[dataa._clothes];
			GameObject.Find("clothe").GetComponent<Renderer>().material.SetColor("_maincolor", new Color (dataa.C_clothes[0], dataa.C_clothes[1], dataa.C_clothes[2], dataa.C_clothes[3]));

			GameObject.Find("item").GetComponent<MeshRenderer>().material = CorrespondingMaterials._ListSkin[dataa._items];
			GameObject.Find("item").GetComponent<Renderer>().material.SetColor("_maincolor", new Color (dataa.C_items[0], dataa.C_items[1], dataa.C_items[2], dataa.C_items[3]));

			GameObject.Find("shoe").GetComponent<MeshRenderer>().material = CorrespondingMaterials._ListSkin[dataa._shoes];
			GameObject.Find("shoe").GetComponent<Renderer>().material.SetColor("_maincolor", new Color (dataa.C_shoes[0], dataa.C_shoes[1], dataa.C_shoes[2], dataa.C_shoes[3]));

			file.Close();
		}
			
	}

}