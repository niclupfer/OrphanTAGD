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
    public GameObject buildingObj1;
    public GameObject buildingObj2;
    public GameObject buildingObj3;
    public GameObject buildingObj4;
    public GameObject buildingObj5;
    public GameObject buildingObj6;
    public GameObject buildingObj7;
    public GameObject buildingObj8;
    public GameObject buildingObj9;

   // public GameObject carObj;
    
    // NPC Variables
    public GameObject[] randomSpawnNPC;
    public static NodeController[] nodeCtrlArray;
    public NodeController[] readArray;
    public NodeController[,] nodeCtrlMatrix;

    public GameObject trashcanObj;
    public GameObject crateObj;

    public GameObject breadStandObj;


    public float blockSize;

    public int blocksWide;


    public float streetPadding;
    public float intersectionPadding;
    public float buildingPadding;
    public float shopPadding;

    public Vector3 minBuildingSize;
    public Vector3 maxBuildingSize;
    
    List<Street> streets;

    //List<GameObject> cars;

    //b
    private float wallLengthStart;
    private float wallWidthStart;
    public float wallPadding = 10;
    private float wallPadSquare;

    private int RandomBuilding;
    private int longBuilding = 0;

    public void GenerateSquareCity()
    {
        GenerateBlockGrid(blocksWide);
   //     GenerateCars(40);
        wallLengthStart = blocksWide * blockSize;
        wallWidthStart = blocksWide * blockSize;
        wallPadSquare = wallPadding * wallPadding;

        var outsideStreet = Instantiate(asphaltObj);
        outsideStreet.transform.parent = transform;
        outsideStreet.transform.localScale = new Vector3(asphaltObj.transform.localScale.x*blocksWide+3.5f, 1f, asphaltObj.transform.localScale.x*blocksWide+3.5f);
        outsideStreet.name = "outsideStreet";
        
        GeneratePerimeter();

        // count nodes and add to array
        nodeCtrlArray = GetComponentsInChildren<NodeController>();
        nodeCtrlMatrix = new NodeController[blocksWide, blocksWide];
        for (int i = 0; i < blocksWide; ++i)
        {
            int k = i + blocksWide * blocksWide - blocksWide;
            for (int j = 0; j < blocksWide; ++j)
            {
                nodeCtrlMatrix[i, j] = nodeCtrlArray[k];
                k -= blocksWide;
            }
        }
    }

    public void ClearCity()
    {
        Transform[] ts = GetComponentsInChildren<Transform>();
        foreach (Transform t in ts)
        {
            if (t != null && t.gameObject != null && t.gameObject != gameObject)
                Destroy(t.gameObject);
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
        //Debug.Log("This is the Block Location X:  " + x + " and Y:  " + z);

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


        var building1 = new GameObject();
        if (TallBuildingChances(x, z))
            RandomBuilding = Random.Range(6, 10);
        else
         RandomBuilding = Random.Range(0, 6);            /// Randomizes the Type Of Building 
       // Debug.Log(RandomBuilding);
        switch (RandomBuilding)
        {
            
            case 0:
                building1 = Instantiate(buildingObj);
                break;
            case 1:
                building1 = Instantiate(buildingObj1);
                break;
            case 2:
                building1 = Instantiate(buildingObj2);
                break;
            case 3:
                building1 = Instantiate(buildingObj3);
                break;
            case 4:
                building1 = Instantiate(buildingObj4);
                break;
            case 5:
                building1 = Instantiate(buildingObj5);
                longBuilding = 1;
                break;
            case 6:
                building1 = Instantiate(buildingObj6);
                break;
            case 7:
                building1 = Instantiate(buildingObj7);
                break;
            case 8:
                building1 = Instantiate(buildingObj8);
                break;
            case 9:
                building1 = Instantiate(buildingObj9);
                break;
        }
        building1.transform.parent = block.transform;
        building1.transform.localScale = new Vector3(1, 1, 1);
        building1.transform.localPosition = new Vector3(15, 0, 15);
        building1.transform.Rotate(0, 270, 0);


        var building2 = new GameObject();
        if (TallBuildingChances(x, z))
            RandomBuilding = Random.Range(6, 10);
        else
            RandomBuilding = Random.Range(0, 6);
        switch (RandomBuilding)
        {
            case 0:
                building2 = Instantiate(buildingObj);
                break;
            case 1:
                building2 = Instantiate(buildingObj1);
                break;
            case 2:
                building2 = Instantiate(buildingObj2);
                break;
            case 3:
                building2 = Instantiate(buildingObj3);
                break;
            case 4:
                building2 = Instantiate(buildingObj4);
                break;
            case 5:
                if (longBuilding == 0)
                {
                    building2 = Instantiate(buildingObj5);
                    longBuilding = 2;  
                }
                break;
            case 6:
                building2 = Instantiate(buildingObj6);
                break;
            case 7:
                building2 = Instantiate(buildingObj7);
                break;
            case 8:
                building2 = Instantiate(buildingObj8);
                break;
            case 9:
                building2 = Instantiate(buildingObj9);
                break;
        }

        building2.transform.parent = block.transform;
        building2.transform.localScale = new Vector3(1, 1, 1);
        building2.transform.localPosition = new Vector3(15, 0, -15);
        building2.transform.Rotate(0, 0, 0);


        var building3 = new GameObject();
        if(TallBuildingChances(x, z))
            RandomBuilding = Random.Range(6, 10);
        else
         RandomBuilding = Random.Range(0, 6);
        switch (RandomBuilding)
        {
            case 0:
                building3 = Instantiate(buildingObj);
                break;
            case 1:
                building3 = Instantiate(buildingObj1);
                break;
            case 2:
                building3 = Instantiate(buildingObj2);
                break;
            case 3:
                building3 = Instantiate(buildingObj3);
                break;
            case 4:
                building3 = Instantiate(buildingObj4);
                break;
            case 5:
                if (longBuilding == 0)
                {
                    building3 = Instantiate(buildingObj5);
                    longBuilding = 3;
                }
                break;
            case 6:
                building3 = Instantiate(buildingObj6);
                break;
            case 7:
                building3 = Instantiate(buildingObj7);
                break;
            case 8:
                building3 = Instantiate(buildingObj8);
                break;
            case 9:
                building3 = Instantiate(buildingObj9);
                break;

        }
        building3.transform.parent = block.transform;
        building3.transform.localScale = new Vector3(1, 1, 1);
        building3.transform.localPosition = new Vector3(-15, 0, -15);
        building3.transform.Rotate(0, 90, 0);

        var building4 = new GameObject();
        if (TallBuildingChances(x, z))
            RandomBuilding = Random.Range(6, 10);
        else
            RandomBuilding = Random.Range(0, 6);
        switch (RandomBuilding)
        {
            case 0:
                building4 = Instantiate(buildingObj);
                break;
            case 1:
                building4 = Instantiate(buildingObj1);
                break;
            case 2:
                building4 = Instantiate(buildingObj2);
                break;
            case 3:
                building4 = Instantiate(buildingObj3);
                break;
            case 4:
                building4 = Instantiate(buildingObj4);
                break;
            case 5:
                if (longBuilding == 0)
                {

                    building4 = Instantiate(buildingObj5);
                    longBuilding = 4;
                }
                break;
            case 6:
                building4 = Instantiate(buildingObj6);
                break;
            case 7:
                building4 = Instantiate(buildingObj7);
                break;
            case 8:
                building4 = Instantiate(buildingObj8);
                break;
            case 9:
                building4 = Instantiate(buildingObj9);

                break;
        }
        building4.transform.parent = block.transform;
        building4.transform.localScale = new Vector3(1, 1, 1);
        building4.transform.localPosition = new Vector3(-15, 0, 15);
        building4.transform.Rotate(0, 180, 0);


        // place alley debris
       
            PlaceAlleyStuff(block,
                new Vector3(-buildingPadding, 0f, -buildingPadding + building1.transform.localScale.z),
                new Vector3(-buildingPadding + building2.transform.localScale.x, 0f, buildingPadding - building2.transform.localScale.z));
               
            PlaceAlleyStuff(block,
                new Vector3(-buildingPadding + building1.transform.localScale.x, 0f, -buildingPadding),
                new Vector3(buildingPadding - building3.transform.localScale.x, 0f, -buildingPadding + building3.transform.localScale.z));

            PlaceAlleyStuff(block,
                new Vector3(-buildingPadding + building2.transform.localScale.x, 0f, buildingPadding - building2.transform.localScale.z),
                new Vector3(buildingPadding - building4.transform.localScale.x, 0f, buildingPadding));

            PlaceAlleyStuff(block,
                new Vector3(buildingPadding - building3.transform.localScale.x, 0f, -buildingPadding + building3.transform.localScale.z),
                new Vector3(buildingPadding, 0f, buildingPadding - building4.transform.localScale.z));


       /* MeshRenderer render = building1.GetComponentInChildren<MeshRenderer>();
        render.enabled = false;
        MeshRenderer render1 = building1.GetComponentInChildren<MeshRenderer>();
        render1.enabled = false;
        MeshRenderer render2 = building1.GetComponentInChildren<MeshRenderer>();
        render2.enabled = false;
        MeshRenderer render3 = building1.GetComponentInChildren<MeshRenderer>();
        render3.enabled = false; 
        */


        switch (longBuilding)
        {
            case 1:
                building1.transform.localPosition = new Vector3(15,0,0);
                Destroy(building2);
                break;
            case 2:
                building2.transform.localPosition = new Vector3(0, 0, -15);
                Destroy(building3);
                break;
            case 3:
                building3.transform.localPosition = new Vector3(-15, 0, 0);
                Destroy(building4);
                break;
            case 4:
                building4.transform.localPosition = new Vector3(0, 0, 15);
                Destroy(building1);
                break;
        }

        longBuilding = 0;

       

        

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

        // put a bread shop somewhere around the outside of the block
        var side = TAGDGame.ChooseRandomFromArray(new int[] { 0, 1 });

        if(side == 0)
        {
            var northSouth = TAGDGame.ChooseRandomFromArray(new int[] { 1, -1 });
            var eastWest = TAGDGame.ChooseRandomFromArray(new int[] { 1, -1 });

            var shop = Instantiate(breadStandObj);
            shop.transform.parent = block.transform;
            shop.transform.eulerAngles = new Vector3(0, 90f, 0);
            shop.transform.localPosition = new Vector3(
                (shopPadding - 8f)* eastWest,
                0f,
                shopPadding * northSouth);
        }
        else
        {
            var northSouth = TAGDGame.ChooseRandomFromArray(new int[] { 1, -1 });
            var eastWest = TAGDGame.ChooseRandomFromArray(new int[] { 1, -1 });

            var shop = Instantiate(breadStandObj);
            shop.transform.parent = block.transform;
            shop.transform.localPosition = new Vector3(
                (shopPadding - 0f) * eastWest,
                0f,
                (shopPadding - 8f) * northSouth);
        }




    }

    void PlaceAlleyStuff(GameObject block, Vector3 topLeft, Vector3 bottomRight)
    {
        var minSize = 5f;
        // if alley is wide and tall enough
        if (Mathf.Abs(topLeft.x - bottomRight.x) < minSize
                || Mathf.Abs(topLeft.z - bottomRight.z) < minSize)
        {
            return;
        }


        var debrisPerAlley = 3;
        for(var i = 0; i < debrisPerAlley; i++)
        {
            // crate or trashcan
            var obj = Instantiate(TAGDGame.ChooseRandomFromArray(new GameObject[] { trashcanObj, crateObj }));
            obj.transform.parent = block.transform;
            obj.transform.localPosition = new Vector3(
                Random.Range(topLeft.x + 1.2f, bottomRight.x - 1.2f),
                obj.transform.position.y,
                Random.Range(topLeft.z + 1.2f, bottomRight.z - 1.2f));
        }
    }

   /* void GenerateCars(int numCars)
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
    } */

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
        peri.transform.parent = transform;
        var wallLengthRem = wallLengthStart;

        //Debug.Log("Wall Length Start : " + wallLengthStart);

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
        wall.transform.localScale = new Vector3(1, 1, 1);// (wallLength, Random.Range(minBuildingSize.y, maxBuildingSize.y), wallDepth);
        wall.transform.position = new Vector3(posX, wall.transform.localScale.y / 2, posZ);

        //Debug.Log("adding wall block");

        return wall;
    }

    GameObject GenerateFillerBuildingZ(float fillerPosX, float fillerPosZ, float fillerLength, float wallLengthStart)
    {
        var wallLengthRem = wallLengthStart;
        //Debug.Log("Wall Length Rem : " + wallLengthRem);

        GameObject fillerBuilding = null;
        while (wallLengthRem > 0)
        {
            //Debug.Log("Wall Length em : " + wallLengthRem);

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

    bool TallBuildingChances(float x, float y)
    {
        bool chance;
        if (x > Random.Range(-80,-200) && y > Random.Range(-80, -200) && x < Random.Range(80,200) && y < Random.Range(80,200))
            chance = true;
        else
            chance = false;
 
        return chance;
    }
    
}
