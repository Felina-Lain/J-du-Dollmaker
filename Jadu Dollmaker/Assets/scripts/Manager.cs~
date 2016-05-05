using UnityEngine;
using System.Collections;
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
			
		dataa.C_skinr = GameObject.Find("skin").GetComponent<Renderer>().material.color.r;
		dataa.C_sking = GameObject.Find("skin").GetComponent<Renderer>().material.color.g;
		dataa.C_skinb = GameObject.Find("skin").GetComponent<Renderer>().material.color.b;
		dataa.C_skinb = GameObject.Find("skin").GetComponent<Renderer>().material.color.a;

		dataa.C_hairr = GameObject.Find("hair").GetComponent<Renderer>().material.color.r;
		dataa.C_hairg = GameObject.Find("hair").GetComponent<Renderer>().material.color.g;
		dataa.C_hairb = GameObject.Find("hair").GetComponent<Renderer>().material.color.b;
		dataa.C_haira = GameObject.Find("hair").GetComponent<Renderer>().material.color.a;

		dataa.C_wingsr = GameObject.Find("wing").GetComponent<Renderer>().material.color.r;
		dataa.C_wingsg = GameObject.Find("wing").GetComponent<Renderer>().material.color.g;
		dataa.C_wingsb = GameObject.Find("wing").GetComponent<Renderer>().material.color.b;
		dataa.C_wingsa = GameObject.Find("hair").GetComponent<Renderer>().material.color.a;

		dataa.C_itemsr = GameObject.Find("item").GetComponent<Renderer>().material.color.r;
		dataa.C_itemsg = GameObject.Find("item").GetComponent<Renderer>().material.color.g;
		dataa.C_itemsb = GameObject.Find("item").GetComponent<Renderer>().material.color.b;
		dataa.C_itemsa = GameObject.Find("item").GetComponent<Renderer>().material.color.a;

		dataa.C_clothesr = GameObject.Find("clothe").GetComponent<Renderer>().material.color.r;
		dataa.C_clothesg = GameObject.Find("clothe").GetComponent<Renderer>().material.color.g;
		dataa.C_clothesb = GameObject.Find("clothe").GetComponent<Renderer>().material.color.b;
		dataa.C_clothesb = GameObject.Find("clothe").GetComponent<Renderer>().material.color.a;

		dataa.C_shoesr = GameObject.Find("shoe").GetComponent<Renderer>().material.color.r;
		dataa.C_shoesg = GameObject.Find("shoe").GetComponent<Renderer>().material.color.g;
		dataa.C_shoesb = GameObject.Find("shoe").GetComponent<Renderer>().material.color.b;
		dataa.C_shoesb = GameObject.Find("shoe").GetComponent<Renderer>().material.color.a;

		BinaryFormatter bf = new BinaryFormatter();
		FileStream file = File.Create (Application.persistentDataPath + "/savedGames.banana");
		bf.Serialize(file, dataa);
		file.Close();


	}

	public void Loading(){

		print("Save Path" + Application.persistentDataPath);

		if(File.Exists(Application.persistentDataPath + "/savedGames.banana")) {
			BinaryFormatter bf = new BinaryFormatter();
			FileStream file = File.Open(Application.persistentDataPath + "/savedGames.banana", FileMode.Open);
			SavedData dataa = (SavedData)bf.Deserialize(file);

			GameObject.Find("skin").GetComponent<MeshRenderer>().material = CorrespondingMaterials._ListSkin[dataa._skin];
			GameObject.Find("skin").GetComponent<MeshRenderer>().material.color = new Color (dataa.C_skinr, dataa.C_sking, dataa.C_skinb, dataa.C_skina);

			GameObject.Find("hair").GetComponent<MeshRenderer>().material = CorrespondingMaterials._ListSkin[dataa._hair];
			GameObject.Find("hair").GetComponent<MeshRenderer>().material.color = new Color (dataa.C_hairr, dataa.C_hairg, dataa.C_hairb, dataa.C_haira);

			GameObject.Find("wing").GetComponent<MeshRenderer>().material = CorrespondingMaterials._ListSkin[dataa._wings];
			GameObject.Find("wing").GetComponent<MeshRenderer>().material.color = new Color (dataa.C_wingsr, dataa.C_wingsg, dataa.C_wingsb, dataa.C_wingsa);

			GameObject.Find("clothe").GetComponent<MeshRenderer>().material = CorrespondingMaterials._ListSkin[dataa._clothes];
			GameObject.Find("clothe").GetComponent<MeshRenderer>().material.color = new Color (dataa.C_clothesr, dataa.C_clothesg, dataa.C_clothesb, dataa.C_clothesa);

			GameObject.Find("item").GetComponent<MeshRenderer>().material = CorrespondingMaterials._ListSkin[dataa._items];
			GameObject.Find("item").GetComponent<MeshRenderer>().material.color = new Color (dataa.C_itemsr, dataa.C_itemsg, dataa.C_itemsb, dataa.C_itemsa);

			GameObject.Find("shoe").GetComponent<MeshRenderer>().material = CorrespondingMaterials._ListSkin[dataa._shoes];
			GameObject.Find("shoe").GetComponent<MeshRenderer>().material.color = new Color (dataa.C_shoesr, dataa.C_shoesg, dataa.C_shoesb, dataa.C_shoesa);

			file.Close();
		}
			
	}

}
