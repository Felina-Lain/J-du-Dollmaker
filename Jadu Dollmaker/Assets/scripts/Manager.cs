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
				print("cluck" + dataa._skin);
				}
			}

		BinaryFormatter bf = new BinaryFormatter();
		FileStream file = File.Create (Application.persistentDataPath + "/savedGames.banana");
		bf.Serialize(file, dataa);
		file.Close();


	}

	public void Loading(){

		print("clack" + Application.persistentDataPath);

		if(File.Exists(Application.persistentDataPath + "/savedGames.banana")) {
			BinaryFormatter bf = new BinaryFormatter();
			FileStream file = File.Open(Application.persistentDataPath + "/savedGames.banana", FileMode.Open);
			SavedData dataa = (SavedData)bf.Deserialize(file);

			print("clock" + dataa._skin);
			GameObject.Find("skin").GetComponent<MeshRenderer>().material = CorrespondingMaterials._ListSkin[dataa._skin];

			file.Close();
		}
			
	}
}
