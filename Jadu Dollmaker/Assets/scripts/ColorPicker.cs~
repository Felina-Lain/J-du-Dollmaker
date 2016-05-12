using UnityEngine;
using System.Collections;
using UnityEngine.UI;

[ExecuteInEditMode]
public class ColorPicker : MonoBehaviour {

	public Camera cam;
	private Vector2 pixelUV;

	private Transform Raystart;

	private Vector3 mousepo;
	private Color _color;

	void Start(){

		Raystart = this.transform.GetChild(0);

	}

	// Update is called once per frame
	public void PickColor () {
			
		RaycastHit hit;
		Ray ray = new Ray(Raystart.transform.position, Raystart.transform.forward);

		if (Physics.Raycast(ray, out hit)) {
			
			//Debug.DrawLine(ray.origin, ray.direction, Color.green, 0.001f, false);


			Texture2D tex = hit.transform.GetComponent<MeshRenderer>().sharedMaterial.mainTexture as Texture2D;

			pixelUV = hit.textureCoord;
			pixelUV.x *= tex.width;
			pixelUV.y *= tex.height;

			_color = tex.GetPixel((int)pixelUV.x, (int)pixelUV.y);
		}

	}

	void OnMouseOver(){
		if(Input.GetMouseButton(0)){

			mousepo = Camera.main.ScreenToWorldPoint(Input.mousePosition);
			Raystart.position = new Vector3(mousepo.x , mousepo.y, Raystart.position.z);

		}
	}

	void Update () {

	PickColor();

		if(this.name.Contains("skin")){
			 ChangeFirstColor("skin", "_maincolor1");
		}
		if(this.name.Contains("hair")){
		 	ChangeFirstColor("hair", "_maincolor1");
		}
		if(this.name.Contains("clothe")){
			 ChangeFirstColor("clothe", "_maincolor1");
		}
		if(this.name.Contains("wing") && this.name.Contains("1")){
			 ChangeFirstColor("wing", "_maincolor1");
		}
		if(this.name.Contains("wing") && this.name.Contains("2") ){
			ChangeFirstColor("wing", "_maincolor2");
		}
		if(this.name.Contains("item")){
			 ChangeFirstColor("item", "_maincolor1");
		}
		if(this.name.Contains("shoe")){
			 ChangeFirstColor("shoe", "_maincolor1");
		}
		if(this.name.Contains("eye")){
			 ChangeFirstColor("eye", "_maincolor1");
		}
	}

	public void ChangeFirstColor(string name0, string colorname) {

		GameObject.Find(name0).GetComponent<Renderer>().sharedMaterial.SetColor(colorname, _color);

	}
}