using UnityEngine;
using System.Collections.Generic;

public class Street
{
    public string direction;
    public Vector3 start;
    public Vector3 end;
}

public class DumbCityGenerator : MonoBehaviour
{

    public GameObject asphaltObj;
    public GameObject sidewalkObj;
    public GameObject buildingObj;
    public GameObject carObj;
    public GameObject[] randomSpawnNPC;
    public static NodeController[] nodeCtrlArray;
    public NodeController[] readArray;
    public NodeController[,] nodeCtrlMatrix;

    public float blockSize;

    public int blocksWide;


    public float streetPadding;
    public float intersectionPadding;
    public float buildingPadding;

    public Vector3 minBuildingSize;
    public Vector3 maxBuildingSize;

    List<Street> streets;

    List<GameObject> cars;
    

    private float wallLengthStart;
    private float wallWidthStart;
    public float wallPadding = 10;
    private float wallPadSquare;

    void Start()
    {
        GenerateBlockGrid(blocksWide);
        GenerateCars(40);
        wallLengthStart = blocksWide * blockSize;
        wallWidthStart = blocksWide * blockSize;
        wallPadSquare = wallPadding * wallPadding;
        var outsideStreet = Instantiate(asphaltObj);
        outsideStreet.transform.localScale = new Vector3(asphaltObj.transform.localScale.x*blocksWide+3.5f, 1f, asphaltObj.transform.localScale.x*blocksWide+3.5f);
        outsideStreet.name = "outsideStreet";
        GeneratePerimeter();
        nodeCtrlArray = GetComponentsInChildren<NodeController>();
        nodeCtrlMatrix = new NodeController[blocksWide, blocksWide];
        for (int i = 0; i < blocksWide; ++i)
        {
            int k = i + blocksWide*blocksWide-blocksWide;
            for (int j = 0; j < blocksWide; ++j)
            {
                nodeCtrlMatrix[i, j] = nodeCtrlArray[k];
                k -= blocksWide;
            }
        }        
    }

    void GenerateBlockGrid(int blocksWide)
    {
        streets = new List<Street>();

        var startPoint = ((blocksWide / 2) * -blockSize) + blockSize / 2;

        for (var x = 0; x < blocksWide; x++)
        {
            for (var z = 0; z < blocksWide; z++)
            {
                GenerateBlock(startPoint + (x * blockSize), startPoint + (z * blockSize));
            }
        }
    }

    void GenerateBlock(float x, float z)
    {
        var center = new Vector3(x, 0f, z);

        var block = new GameObject("Block");
        block.transform.position = center;
        block.transform.parent = transform;

        // generate the road and sidwalk

        // commented out due to giant asphalt covering the rest of the ground
       // var asphalt = Instantiate(asphaltObj);
       // asphalt.transform.parent = block.transform;
       // asphalt.transform.position = center;

        var sidewalk = Instantiate(sidewalkObj);
        sidewalk.transform.parent = block.transform;
        sidewalk.transform.localPosition = Vector3.zero;

        // generate buildings
        // place the 4 corner buildings first

        var building1 = Instantiate(buildingObj);
        building1.transform.parent = block.transform;
        var width = Random.Range(minBuildingSize.x, maxBuildingSize.x);
        var height = Random.Range(minBuildingSize.y, maxBuildingSize.y);
        var depth = Random.Range(minBuildingSize.z, maxBuildingSize.z);
        building1.transform.localScale = new Vector3(width, height, depth);
        building1.transform.localPosition = new Vector3(
            -buildingPadding + (width / 2),
            (height / 2),
            -buildingPadding + (depth / 2));

        var building2 = Instantiate(buildingObj);
        building2.transform.parent = block.transform;
        width = Random.Range(minBuildingSize.x, maxBuildingSize.x);
        height = Random.Range(minBuildingSize.y, maxBuildingSize.y);
        depth = Random.Range(minBuildingSize.z, maxBuildingSize.z);
        building2.transform.localScale = new Vector3(width, height, depth);
        building2.transform.localPosition = new Vector3(
            -buildingPadding + (width / 2),
            (height / 2),
            buildingPadding - (depth / 2));

        var building3 = Instantiate(buildingObj);
        building3.transform.parent = block.transform;
        width = Random.Range(minBuildingSize.x, maxBuildingSize.x);
        height = Random.Range(minBuildingSize.y, maxBuildingSize.y);
        depth = Random.Range(minBuildingSize.z, maxBuildingSize.z);
        building3.transform.localScale = new Vector3(width, height, depth);
        building3.transform.localPosition = new Vector3(
            buildingPadding - (width / 2),
            (height / 2),
            -buildingPadding + (depth / 2));

        var building4 = Instantiate(buildingObj);
        building4.transform.parent = block.transform;
        width = Random.Range(minBuildingSize.x, maxBuildingSize.x);
        height = Random.Range(minBuildingSize.y, maxBuildingSize.y);
        depth = Random.Range(minBuildingSize.z, maxBuildingSize.z);
        building4.transform.localScale = new Vector3(width, height, depth);
        building4.transform.localPosition = new Vector3(
            buildingPadding - (width / 2),
            (height / 2),
            buildingPadding - (depth / 2));

        // set street info
        var northStreet = new Street();
        northStreet.direction = "east";
        northStreet.start = new Vector3(x - streetPadding + intersectionPadding, 0f, z - streetPadding);
        northStreet.end = new Vector3(x + streetPadding - intersectionPadding, 0f, z - streetPadding);
        streets.Add(northStreet);

        var southStreet = new Street();
        southStreet.direction = "west";
        southStreet.start = new Vector3(x + streetPadding - intersectionPadding, 0f, z + streetPadding);
        southStreet.end = new Vector3(x - streetPadding + intersectionPadding, 0f, z + streetPadding);
        streets.Add(southStreet);

        var eastStreet = new Street();
        eastStreet.direction = "south";
        eastStreet.start = new Vector3(x + streetPadding, 0f, z - streetPadding + intersectionPadding);
        eastStreet.end = new Vector3(x + streetPadding, 0f, z + streetPadding - intersectionPadding);
        streets.Add(eastStreet);

        var westStreet = new Street();
        westStreet.direction = "north";
        westStreet.start = new Vector3(x - streetPadding, 0f, z + streetPadding - intersectionPadding);
        westStreet.end = new Vector3(x - streetPadding, 0f, z - streetPadding + intersectionPadding);
        streets.Add(westStreet);

    }

    void GenerateCars(int numCars)
    {
        cars = new List<GameObject>();

        var carHolder = new GameObject("Cars");
        carHolder.transform.parent = transform;

        for (var i = 0; i < streets.Count; i++)
        {
            var car = Instantiate(carObj);
            car.transform.parent = carHolder.transform;
            car.transform.localPosition = new Vector3(
            streets[i].start.x,
            1f,
            streets[i].start.z);
            cars.Add(car);
        }

    }

    public Street GetStreetWithStart(Vector3 startPos)
    {
        foreach (var street in streets)
        {
            if (street.start == startPos)
                return street;
        }
        return null;
    }

    void GeneratePerimeter()
    {
        var peri = new GameObject("Perimeter");
        var wallLengthRem = wallLengthStart;
        
        //create corners
        var cornerLength = wallLengthStart / 2 + wallPadSquare / 4;
        var corner = GenerateWallBuilding(cornerLength, -cornerLength, wallPadSquare / 2, wallPadSquare / 2);
        corner.transform.parent = peri.transform;

        corner = GenerateWallBuilding(-cornerLength, -cornerLength, wallPadSquare / 2, wallPadSquare / 2);
        corner.transform.parent = peri.transform;

        corner = GenerateWallBuilding(-cornerLength, cornerLength, wallPadSquare / 2, wallPadSquare / 2);
        corner.transform.parent = peri.transform;

        corner = GenerateWallBuilding(cornerLength, cornerLength, wallPadSquare / 2, wallPadSquare / 2);
        corner.transform.parent = peri.transform;

        //generate filler buildings
        GameObject fillerBuilding;

        fillerBuilding = GenerateFillerBuildingX(-corner.transform.position.x, -(corner.transform.position.z) + corner.transform.localScale.z / 2, wallLengthStart / 10, wallLengthStart);
        fillerBuilding.transform.parent = peri.transform;

        fillerBuilding = GenerateFillerBuildingX(corner.transform.position.x, -(corner.transform.position.z) + corner.transform.localScale.z / 2, wallLengthStart / 10, wallLengthStart);
        fillerBuilding.transform.parent = peri.transform;

        fillerBuilding = GenerateFillerBuildingZ(-(corner.transform.position.x) + corner.transform.localScale.x / 2,corner.transform.position.z, wallLengthStart/10, wallLengthStart);
        fillerBuilding.transform.parent = peri.transform;

        fillerBuilding = GenerateFillerBuildingZ(-(corner.transform.position.x) + corner.transform.localScale.x / 2, -corner.transform.position.z, wallLengthStart / 10, wallLengthStart);
        fillerBuilding.transform.parent = peri.transform;
    }

    GameObject GenerateWallBuilding(float posX, float posZ, float wallLength, float wallDepth)
    {
        var peri = GameObject.Find("Perimeter");

        var wall = Instantiate(buildingObj);
        wall.transform.parent = peri.transform;
        wall.transform.localScale = new Vector3(wallLength, Random.Range(minBuildingSize.y, maxBuildingSize.y), wallDepth);
        wall.transform.position = new Vector3(posX, wall.transform.localScale.y / 2, posZ);

        return wall;
    }

    GameObject GenerateFillerBuildingZ(float fillerPosX, float fillerPosZ, float fillerLength, float wallLengthStart)
    {
        var wallLengthRem = wallLengthStart;
        GameObject fillerBuilding = null;
        while (wallLengthRem > 0)
        {
            fillerBuilding = GenerateWallBuilding(fillerPosX + fillerLength / 2, fillerPosZ, fillerLength, 50);
            wallLengthRem -= fillerBuilding.transform.localScale.x;
            fillerPosX += fillerBuilding.transform.localScale.x;
        }
        return fillerBuilding;
    }

    GameObject GenerateFillerBuildingX(float fillerPosX, float fillerPosZ, float fillerLength, float wallLengthStart)
    {
        var wallLengthRem = wallLengthStart;
        GameObject fillerBuilding = null;
        while (wallLengthRem > 0)
        {
            fillerBuilding = GenerateWallBuilding(fillerPosX, fillerPosZ + fillerLength / 2, 50, fillerLength);
            wallLengthRem -= fillerBuilding.transform.localScale.z;
            fillerPosZ += fillerBuilding.transform.localScale.z;
        }
        return fillerBuilding;
    }

    void Update()
    {

    }
}
