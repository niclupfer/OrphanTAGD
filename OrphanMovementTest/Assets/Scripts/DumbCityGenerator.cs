using UnityEngine;
using System.Collections;

public class DumbCityGenerator : MonoBehaviour {

	public GameObject asphaltObj;
	public GameObject sidewalkObj;
	public GameObject buildingObj;

	public float blockSize;

	public int blocksWide;

	public float buildingPadding;

	public Vector3 minBuildingSize;
	public Vector3 maxBuildingSize;

	public float minAlleyWidth;


	void Start ()
	{
	
		GenerateBlockGrid (blocksWide);
	}

	void GenerateBlockGrid (int blocksWide)
	{
		var startPoint = ((blocksWide / 2) * -blockSize)  + blockSize/2;

		for (var x = 0; x < blocksWide; x++)
		{
			for (var z = 0; z < blocksWide; z++)
			{
				GenerateBlock ( startPoint + (x * blockSize), startPoint + (z * blockSize));
			}
		}
	}

	void GenerateBlock (float x, float z)
	{
		var center = new Vector3 (x, 0f, z);

		var block = new GameObject("Block");
		block.transform.position = center;
		block.transform.parent = transform;

		// generate the road and sidwalk
			var asphalt = Instantiate (asphaltObj);
			asphalt.transform.parent = block.transform;
			asphalt.transform.position = center;

			var sidewalk = Instantiate (sidewalkObj);
			sidewalk.transform.parent = block.transform;
			sidewalk.transform.localPosition = Vector3.zero;

		// generate buildings
			// place the 4 corner buildings first

		var building1 = Instantiate (buildingObj);
		building1.transform.parent = block.transform;
		var width = Random.Range (minBuildingSize.x, maxBuildingSize.x);
		var height = Random.Range (minBuildingSize.y, maxBuildingSize.y);
		var depth = Random.Range (minBuildingSize.z, maxBuildingSize.z);
		building1.transform.localScale = new Vector3 (width, height, depth);
		building1.transform.localPosition = new Vector3(
			-buildingPadding + (width / 2),
			(height / 2),
			-buildingPadding + (depth / 2));

		var building2 = Instantiate (buildingObj);
		building2.transform.parent = block.transform;
		width = Random.Range (minBuildingSize.x, maxBuildingSize.x);
		height = Random.Range (minBuildingSize.y, maxBuildingSize.y);
		depth = Random.Range (minBuildingSize.z, maxBuildingSize.z);
		building2.transform.localScale = new Vector3 (width, height, depth);
		building2.transform.localPosition = new Vector3(
			-buildingPadding + (width / 2),
			(height / 2),
			buildingPadding - (depth / 2));

		var building3 = Instantiate (buildingObj);
		building3.transform.parent = block.transform;
		width = Random.Range (minBuildingSize.x, maxBuildingSize.x);
		height = Random.Range (minBuildingSize.y, maxBuildingSize.y);
		depth = Random.Range (minBuildingSize.z, maxBuildingSize.z);
		building3.transform.localScale = new Vector3 (width, height, depth);
		building3.transform.localPosition = new Vector3(
			buildingPadding - (width / 2),
			(height / 2),
			-buildingPadding + (depth / 2));

		var building4 = Instantiate (buildingObj);
		building4.transform.parent = block.transform;
		width = Random.Range (minBuildingSize.x, maxBuildingSize.x);
		height = Random.Range (minBuildingSize.y, maxBuildingSize.y);
		depth = Random.Range (minBuildingSize.z, maxBuildingSize.z);
		building4.transform.localScale = new Vector3 (width, height, depth);
		building4.transform.localPosition = new Vector3(
			buildingPadding - (width / 2),
			(height / 2),
			buildingPadding - (depth / 2));
		
	}

	void Update ()
	{
	
	}
}
