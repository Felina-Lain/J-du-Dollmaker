using UnityEngine;
using System.Collections;
using UnityEngine.UI;

[ExecuteInEditMode]
public class ColorPicker : MonoBehaviour {

	public Camera cam;
	public Vector2 pixelUV;

	// Update is called once per frame
	public void PickColor () {

	
		RaycastHit hit;
		Ray ray = cam.ScreenPointToRay(Input.mousePosition);

		if (Physics.Raycast(ray, out hit)) {
			
			Debug.DrawRay(ray.origin, ray.direction * 10, Color.yellow);


			Texture2D tex = hit.transform.GetComponent<MeshRenderer>().material.mainTexture as Texture2D;

			pixelUV = hit.textureCoord;
			pixelUV.x *= tex.width;
			pixelUV.y *= tex.height;

			Color hitColor = tex.GetPixel((int)pixelUV.x, (int)pixelUV.y);
			this.transform.parent.GetComponent<Image>().color = hitColor;
		}

	}
}
