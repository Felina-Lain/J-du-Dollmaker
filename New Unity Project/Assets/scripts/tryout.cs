using UnityEngine;
using System.Collections;

public class tryout : MonoBehaviour {

	public float start_v;
	public float _v;

	// Use this for initialization
	void Start () {

		_v = start_v;
	
	}
	
	// Update is called once per frame
	void Update () {


		_v -= 0.1f * Time.deltaTime;
		this.GetComponent<Renderer>().material.GetFloat("_Health");
		this.GetComponent<Renderer>().material.SetFloat("_Health", _v);

		if(_v < 0){_v = start_v;}
	
	}
}
