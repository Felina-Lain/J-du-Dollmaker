using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Runtime.Serialization.Formatters.Binary;
using System.IO;

public class Manager : MonoBehaviour {

	public BinaryFormatter bf;

	public void Saving(){



		SavedData dataa = new SavedData();
		for (int i = 0; i < CorrespondingMaterials._ListSkin.Count; i++){

			if( GameObject.Find("skin").GetComponent<Renderer>().material.name.Contains(CorrespondingMaterials._ListSkin[i].name)){				
				dataa._skin = i;			
				}
			if( GameObject.Find("hair").GetComponent<Renderer>().material.name.Contains(CorrespondingMaterials._ListSkin[i].name)){				
				dataa._hair = i;			
			}
		}
			
		dataa.C_skinr = GameObject.Find("skin").GetComponent<Renderer>().material.color.r;
		dataa.C_sking = GameObject.Find("skin").GetComponent<Renderer>().material.color.g;
		dataa.C_skinb = GameObject.Find("skin").GetComponent<Renderer>().material.color.b;
		dataa.C_skina = GameObject.Find("skin").GetComponent<Renderer>().material.color.a;

		dataa.C_hairr = GameObject.Find("hair").GetComponent<Renderer>().material.color.r;
		dataa.C_hairg = GameObject.Find("hair").GetComponent<Renderer>().material.color.g;
		dataa.C_hairb = GameObject.Find("hair").GetComponent<Renderer>().material.color.b;
		dataa.C_haira = GameObject.Find("hair").GetComponent<Renderer>().material.color.a;

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

			file.Close();
		}
			
	}

}
