using UnityEngine;
using System.Collections.Generic;
using Delaunay;
using Delaunay.Geo;
using System.Linq;
using Assets.Map;

public class Main : MonoBehaviour
{
    Map _map;
    const int _textureScale = 50;
    GameObject _selector;

	public string seed;
	public CitySize size;

	public GameObject roadSectionObj;
	public GameObject coastRoadSectionObj;
    public GameObject buildingObj;

    public Material lightGrayMaterial;
    public Material darkGrayMaterial;

    public Vector3 minBuildingSize;
    public Vector3 maxBuildingSize;

    void Awake ()
	{
        _selector = GameObject.Find("Selector");

		Random.InitState (seed.GetHashCode());
            
		_map = new Map(size);

        //GameObject.Find("Main Camera").GetComponentInChildren<Camera>().Map = _map;

        new MapTexture(_textureScale).AttachTexture(GameObject.Find("Map"), _map);

		//PlaceRoads ();

		BuildBlocks ();
	}

	void PlaceRoads()
	{
		var roads = _map.Graph.edges.Where(p => p.d0.biome != Biome.Ocean && p.d1.biome != Biome.Ocean).Select(p => new[] 
			{ 
				p.v0.point.x, p.v0.point.y,
				p.v1.point.x, p.v1.point.y
			}).ToArray();

		var coastRoads = _map.Graph.edges.Where(p => (p.d0.biome == Biome.Ocean) ^ (p.d1.biome == Biome.Ocean)).Select(p => new[] 
			{ 
				p.v0.point.x, p.v0.point.y,
				p.v1.point.x, p.v1.point.y
			}).ToArray();

		foreach (var road in roads)
			AddRoad (roadSectionObj, road [0], road [1], road [2], road [3]);

		foreach (var road in coastRoads)
			AddRoad(coastRoadSectionObj,road[0], road[1], road[2], road[3]);

	}

	float scale = 30f;

	void AddRoad(GameObject obj, float x1, float y1, float x2, float y2)
	{
		var a = new Vector2 (x1 * scale, y1 * scale);
		var b = new Vector2 (x2 * scale, y2 * scale);

		var road = Instantiate (obj);
		road.transform.parent = GameObject.Find ("Roads").transform;
		//road.transform.position = new Vector3(a.x, 0f, a.y);
		//road.transform.rotation = Quaternion.Euler (90f, angle, 45f);
		//road.transform.localScale = new Vector3 (8f, 8f, 1f);

		//var roadB = Instantiate (roadSectionObj);

		//roadB.transform.position = new Vector3(b.x, 0f, b.y);
		//road.transform.rotation = Quaternion.Euler (90f, angle, 45f);
		//roadB.transform.localScale = new Vector3 (8f, 8f, 1f);

		var length = Vector2.Distance (a, b);
		var angle = Vector2.Angle (b, a); // * Mathf.Rad2Deg;


		float xDiff = a.x - b.x;
		float yDiff = a.y - b.y;
		angle = (float)Mathf.Atan2(yDiff, xDiff) * (float)(-180 / Mathf.PI) + 90;
		Debug.Log (angle);
		
		var centerPoint = ((a - b) * 	0.5f) + b;
			//new Vector3 (((x1 + x2) / 2f) * 1f, 0f, ((y1 + y2) / 2f) * 1f);

		road.transform.position = new Vector3(centerPoint.x, 0f, centerPoint.y);
		//road.transform.rotation = Quaternion.Euler (90f, angle, 0f);
		road.transform.localScale = new Vector3 (8f, length, 1f);
		road.transform.eulerAngles = new Vector3(90, angle, 0);

	}

	void BuildBlocks()
	{
		var blocks = _map.Graph.centers.Where (p => p.biome != Biome.Ocean);

		foreach (var block in blocks)
			AddBlock (block);
	}

	void AddBlock(Center block)
	{
		var blockObj = new GameObject ("Block");
		blockObj.transform.parent = GameObject.Find ("Blocks").transform;

        var blockCenter = new Vector3(block.point.x * scale, 0f, block.point.y * scale);

        // build sidewalk mesh

        Vector3[] Vertices = new Vector3[block.corners.Count + 1];
		Vertices [0] = new Vector3 (0f, 0f, 0f);
		for (var i = 0; i < block.corners.Count; i++) {
			//Vertices [i+1] = new Vector3 (block.corners[i].point.x * scale, 0f, block.corners[i].point.y * scale);
            Vertices[i + 1] = new Vector3((block.corners[i].point.x * scale) - blockCenter.x, 0f, (block.corners[i].point.y * scale) - blockCenter.z);
            Vertices[i + 1] = Vector3.MoveTowards (Vertices [i + 1], Vertices [0], 8f);
		}

		//{new Vector3(-1,0,1),new Vector3(1,0,1),new Vector3(1,0,-1),new Vector3(-1,0,-1)};

		Vector2[] UV = new Vector2[block.corners.Count + 1];
		UV [0] = new Vector2 (0, 0);
		for (var i = 0; i < block.corners.Count; i++) {
			UV [i+1] = new Vector2 (0.5f, 0.5f);
        }
		//{new Vector2(0,256),new Vector2(256,256),new Vector2(256,0),new Vector2(0,0)};

		int[] Triangles = new int[3 * block.corners.Count];// {0,1,2,0,2,3};
		var t = 0;
		for (var i = 0; i < block.corners.Count; i++) {
			Triangles [t++] = 0;
			Triangles [t++] = i+1;
			if(i+2 > block.corners.Count)
				Triangles [t++] = 1;
			else
				Triangles [t++] = i+2;
		}

		Mesh stuff = new Mesh();
		var sideWalk = new GameObject ("SideWalk");
		sideWalk.AddComponent<MeshFilter>().mesh = stuff;
		sideWalk.AddComponent<MeshRenderer> ().material = lightGrayMaterial;
		sideWalk.AddComponent<MeshCollider> ().sharedMesh = stuff;
        sideWalk.GetComponent<MeshRenderer>().receiveShadows = true;
        sideWalk.GetComponent<MeshRenderer>().shadowCastingMode = UnityEngine.Rendering.ShadowCastingMode.Off;
        stuff.vertices = Vertices;
		stuff.triangles = Triangles;
		stuff.uv = UV;

		sideWalk.transform.parent = blockObj.transform;

        //sideWalk.transform.localPosition = new Vector3 (blockCenter.x, 0.2f, blockCenter.z);
        sideWalk.transform.localPosition = new Vector3(0f, 0.1f, 0f);
        sideWalk.transform.localScale = new Vector3(1f, 1f, 1f);

        blockObj.transform.localPosition = new Vector3(blockCenter.x, 0.2f, blockCenter.z);

        foreach (var edge in block.borders)
        {
            // build road mesh

            Vertices = new Vector3[4];
            Vertices[0] = new Vector3((edge.v0.point.x * scale) - blockCenter.x, 0f, (edge.v0.point.y * scale) - blockCenter.z);
            Vertices[1] = new Vector3((edge.v1.point.x * scale) - blockCenter.x, 0f, (edge.v1.point.y * scale) - blockCenter.z);
            Vertices[2] = new Vector3((edge.v0.point.x * scale) - blockCenter.x, 0f, (edge.v0.point.y * scale) - blockCenter.z);
            Vertices[3] = new Vector3((edge.v1.point.x * scale) - blockCenter.x, 0f, (edge.v1.point.y * scale) - blockCenter.z);
            
            Vertices[2] = Vector3.MoveTowards(Vertices[2], new Vector3(0f, 0f, 0f), 9f);
            Vertices[3] = Vector3.MoveTowards(Vertices[3], new Vector3(0f, 0f, 0f), 9f);

            //{new Vector3(-1,0,1),new Vector3(1,0,1),new Vector3(1,0,-1),new Vector3(-1,0,-1)};

            UV = new Vector2[]{new Vector2(0,256),new Vector2(256,256),new Vector2(256,0),new Vector2(0,0)};
            //UV = new Vector2[] { new Vector2(0, 0), new Vector2(0, 0), new Vector2(0, 0), new Vector2(0, 0) };


            /*
            if(Vertices[0].z < Vertices[2].z)
            {
                Triangles = new int[] { 1, 2, 3, 0, 2, 1 };
            }
            else if (Vertices[1].z < Vertices[3].z)
            {
                Triangles = new int[] { 0, 2, 1, 1, 2, 3 };
            }
            else */
			Triangles = new int[] { 0, 1, 2,
									1, 3, 2,			
									2, 1, 0,
									2, 3, 1 };
            



            stuff = new Mesh();
            var road = new GameObject("Road");
            road.AddComponent<MeshFilter>().mesh = stuff;
            road.AddComponent<MeshRenderer>().material = darkGrayMaterial;
            road.AddComponent<MeshCollider>().sharedMesh = stuff;
            road.GetComponent<MeshRenderer>().receiveShadows = true;
            road.GetComponent<MeshRenderer>().shadowCastingMode = UnityEngine.Rendering.ShadowCastingMode.Off;

            stuff.vertices = Vertices;
            stuff.triangles = Triangles;
            stuff.uv = UV;

            road.transform.parent = blockObj.transform;

            road.transform.localPosition = new Vector3(0f, 0f, 0f);
            road.transform.localScale = new Vector3(1f, 1f, 1f);

            
            var sizeMod = 1f;

            if (block.biome == Biome.Scorched)
                sizeMod = 6f;
            else if (block.biome == Biome.Grassland)
                sizeMod = 2f;
            else if (block.biome == Biome.SubtropicalDesert)
                sizeMod = 1.5f;


            float xDiff = Vertices[0].x - Vertices[1].x;
            float yDiff = Vertices[0].z - Vertices[1].z;
            var angle = (float)Mathf.Atan2(yDiff, xDiff) * (float)(-180 / Mathf.PI);// + 90;
            //new Vector3 (((x1 + x2) / 2f) * 1f, 0f, ((y1 + y2) / 2f) * 1f);

            var building = Instantiate(buildingObj);
            building.transform.parent = blockObj.transform;
            var width1 = Random.Range(minBuildingSize.x, maxBuildingSize.x);
            var height = Random.Range(minBuildingSize.y * sizeMod, maxBuildingSize.y * sizeMod);
            var depth = Random.Range(minBuildingSize.z, maxBuildingSize.z);
            building.transform.localScale = new Vector3(width1, height, depth);

            // center on edge
            var buildingPos = ((Vertices[0] - Vertices[1]) * 0.5f) + Vertices[1];
            buildingPos = Vector3.MoveTowards(buildingPos, Vector3.zero, 14f + (depth / 2));
            building.transform.localPosition = new Vector3(buildingPos.x, (height/2), buildingPos.z);
            building.transform.eulerAngles = new Vector3(0, angle, 0);

            building = Instantiate(buildingObj);
            building.transform.parent = blockObj.transform;
            var width = Random.Range(minBuildingSize.x, maxBuildingSize.x);
            height = Random.Range(minBuildingSize.y * sizeMod, maxBuildingSize.y * sizeMod);
            depth = Random.Range(minBuildingSize.z, maxBuildingSize.z);
            building.transform.localScale = new Vector3(width, height, depth);

            // center on edge
            buildingPos = ((Vertices[0] - Vertices[1]) * 0.5f) + Vertices[1];
            buildingPos = Vector3.MoveTowards(buildingPos, Vertices[1], (width1) + (width / 2));
            buildingPos = Vector3.MoveTowards(buildingPos, Vector3.zero, 14f + (depth / 2));
            building.transform.localPosition = new Vector3(buildingPos.x, (height / 2), buildingPos.z);
            building.transform.eulerAngles = new Vector3(0, angle, 0);

            building = Instantiate(buildingObj);
            building.transform.parent = blockObj.transform;
            width = Random.Range(minBuildingSize.x, maxBuildingSize.x);
            height = Random.Range(minBuildingSize.y * sizeMod, maxBuildingSize.y * sizeMod);
            depth = Random.Range(minBuildingSize.z, maxBuildingSize.z);
            building.transform.localScale = new Vector3(width, height, depth);

            // center on edge
            buildingPos = ((Vertices[0] - Vertices[1]) * 0.5f) + Vertices[1];
            buildingPos = Vector3.MoveTowards(buildingPos, Vertices[0], (width1) + (width/2));
            buildingPos = Vector3.MoveTowards(buildingPos, Vector3.zero, 14f + (depth / 2));
            building.transform.localPosition = new Vector3(buildingPos.x, (height / 2), buildingPos.z);
            building.transform.eulerAngles = new Vector3(0, angle, 0);



            /*
            building.transform.localPosition = new Vector3(
                -10f + (width / 2),
                (height / 2),
                -10f + (depth / 2));
            */

        }       

    }
}