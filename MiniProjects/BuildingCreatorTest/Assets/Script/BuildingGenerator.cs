using UnityEngine;
using System.Collections;
using System.Collections.Generic;

struct Pair
{
    public int f;
    public int s;
    public Pair(int first, int second)
    {
        f = first;
        s = second;
    }
    public static Pair operator +(Pair other,Pair other1)
    {
        int f = other.f + other1.f;
        int s = other.s + other1.s;
        return new Pair(f,s);
    }
    public bool inside(Pair other)
    {
        return f >= 0 && f < other.f && s >= 0 && s < other.s;
    }
}

public class BuildingGenerator : MonoBehaviour {

    [SerializeField]
    GameObject road;

    [SerializeField]
    GameObject building;

    List<List<GameObject>> roadNetwork;
    int sizeX = 50;
    int sizeY = 50;
    float max = 0;
    Pair sizes;
    float count = 0;
    // Use this for initialization
    void Start () {
        max = sizeX * sizeY;
        sizes = new Pair(sizeX, sizeY);
        roadNetwork = new List<List<GameObject>>();
        for (int k = 0; k < sizeX;k++)
        {
            roadNetwork.Add(new List<GameObject>());
            for (int j = 0; j < sizeY; j++)
            {
                roadNetwork[k].Add(null);
            }
        }

        GameObject start = Instantiate(road);

        roadNetwork[sizeX / 2][sizeY / 2] = start;
        Pair pair = new Pair(sizeX / 2, sizeY / 2);
        start.transform.position = new Vector3(pair.f,0, pair.s);
        Pair dir = new Pair(1, 0);
        build(pair, pickRand());
        placeBuildings();
	}

    void placeBuildings()
    {
        for (int k = 0; k < sizeX; k++)
        {
            List<GameObject> row = roadNetwork[k];
            for(int i = 0; i < sizeY; i++)
            {

                //List<GameObject> surr = new List<GameObject>();
                Pair l = new Pair(k+1,i);
                Pair r = new Pair(k-1,i);
                Pair u = new Pair(k,i+1);
                Pair d = new Pair(k,i-1);
                GameObject center = roadNetwork[k][i];
                
                if (center != null && center.tag == "Road")
                {
                    //Debug.Log(center);
                    if (l.inside(sizes))
                    {
                        GameObject left = roadNetwork[k + 1][i];

                        if (left == null)
                        {
                            roadNetwork[k + 1][i] = Instantiate(building);
                            roadNetwork[k + 1][i].transform.position = new Vector3(k + 1, 0, i);
                        }
                    }
                    if (r.inside(sizes))
                    {
                        GameObject right = roadNetwork[k - 1][i];
                        if (right == null)
                        {
                            roadNetwork[k - 1][i] = Instantiate(building);
                            roadNetwork[k - 1][i].transform.position = new Vector3(k + 1, 0, i);
                        }
                    }
                    if (u.inside(sizes))
                    {
                        GameObject up = roadNetwork[k][i + 1];
                        if (up == null)
                        {
                            roadNetwork[k][i + 1] = Instantiate(building);
                            roadNetwork[k][i + 1].transform.position = new Vector3(k, 0, i + 1);
                        }
                    }
                    if (d.inside(sizes))
                    {
                        GameObject down = roadNetwork[k][i - 1];
                        if (down == null)
                        {
                            roadNetwork[k][i - 1] = Instantiate(building);
                            roadNetwork[k][i - 1].transform.position = new Vector3(k, 0, i - 1);
                        }
                    }
                }
            }
        }
    }

    Pair pickRand()
    {

        Pair rand = new Pair(Random.Range(-1, 1), Random.Range(-1, 1));
        if (rand.f == 0 && rand.s == 0)
        {
            rand.f = 1;
        }
        /*
        if (Mathf.Abs(rand.f) == Mathf.Abs(rand.s))
        {
            rand = pickRand();
        }
        */
        return rand;
    }

    void build(Pair loc, Pair dir)
    {
        count++;
        Pair newloc = loc + dir;
        
        if (newloc.inside(sizes) && roadNetwork[newloc.f][newloc.s] != null)
        {
            return;
        }

        if (!newloc.inside(sizes))
        {
            for (int k = -1; k < 2; k++)
            {
                for (int j = -1; j < 2; j++)
                {
                    newloc = loc + new Pair(k,j);
                    if (Mathf.Abs(newloc.f) == Mathf.Abs(newloc.s))
                        if (newloc.inside(sizes) && roadNetwork[newloc.f][newloc.s] == null)
                        {

                            Pair newDir = new Pair(k, j);
                            GameObject temp = Instantiate(road);
                            temp.GetComponent<Renderer>().material.color = new Color(0,0,1, 1);
                            temp.transform.position = new Vector3(newloc.f, 0, newloc.s);
                            roadNetwork[newloc.f][newloc.s] = temp;

                            build(newloc, newDir);
                            return;
                        }
                }
            }
        }
        else
        {
            GameObject temp = Instantiate(road);
            temp.transform.position = new Vector3(newloc.f, 0, newloc.s);
            //Debug.Log(count / max);
            temp.GetComponent<Renderer>().material.color = new Color(count / max, 0,0, 1);
            roadNetwork[newloc.f][newloc.s] = temp;
            build(newloc, dir);
            if(Random.Range(0, 10) == 5)
                build(newloc, pickRand());
        }
    }




	// Update is called once per frame
	void Update () {
	
	}
}
