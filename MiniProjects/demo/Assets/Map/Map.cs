using Delaunay;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

namespace Assets.Map
{
	public enum CitySize{
		small, medium, large
	}

    public class Map
    {
        private int _pointCount = 64;

        float _lakeThreshold = 0.3f;

        public float Width = 50f;
        public float Height = 50f;

        const int NUM_LLOYD_RELAXATIONS = 2;
        
        public Graph Graph { get; private set; }
        public Center SelectedCenter { get; private set; }

		public Map(CitySize size)
        {
			if (size == CitySize.small) {
				Width = 10;
				Height = 10;
				_pointCount = 20;
				// neighborhoods = ? 
				// gangs = ?
			}
			else if (size == CitySize.medium) {
				Width = 50;
				Height = 50;
				_pointCount = 112;
				// neighborhoods = ? 
				// gangs = ?
			}
			else if (size == CitySize.large) {
				Width = 80;
				Height = 80;
				_pointCount = 196;
				// neighborhoods = ? 
				// gangs = ?
			}

            List<uint> colors = new List<uint>();
            var points = new List<Vector2>();

            for (int i = 0; i < _pointCount; i++)
            {
                colors.Add(0);
                points.Add(new Vector2(
                        UnityEngine.Random.Range(0, Width),
                        UnityEngine.Random.Range(0, Height))
                );
            }

            for (int i = 0; i < NUM_LLOYD_RELAXATIONS; i++)
                points = Graph.RelaxPoints(points, Width, Height).ToList();

            var voronoi = new Voronoi(points, colors, new Rect(0, 0, Width, Height));
            
            Graph = new Graph(points, voronoi, (int)Width, (int)Height, _lakeThreshold);

			Debug.Log ("Initial Edges: " + Graph.edges.Count);

			// remove short edges
			RemoveShortEdges(1f);

			Debug.Log ("New Edges: " + Graph.edges.Count);

			Debug.Log("Blocks: "+CountBlocks());
        }

		void RemoveShortEdges(float minRoadLength)
		{
			//var shortEdges = Graph.edges.Where (p => p.v0 != null && Mathf.Abs ((p.v0.point - p.v1.point).magnitude) < minRoadLength);//.Select(p);

			List<Edge> edgesToRemove = new List<Edge> ();
			//Debug.Log ("Short Edges: " + shortEdges.Count);
			foreach (Edge edge in Graph.edges)
			{
				if (edge.v0 != null && Mathf.Abs ((edge.v0.point - edge.v1.point).magnitude) < minRoadLength) {
					Debug.Log ("Removing Edge");
					// remove the edge
					/*
				public int index;
				public Center d0, d1;  // Delaunay edge
				public Corner v0, v1;  // Voronoi edge
				public Vector2 midpoint;  // halfway between v0,v1
				public int river;  // volume of water, or 0
				*/

					// remove edge from its two centers
					edge.d0.borders.Remove (edge);
					edge.d1.borders.Remove (edge);

					// remove the corners from the Centers
					//edge.d0.corners.Remove (edge.v0);
					//edge.d0.corners.Remove (edge.v1);

					//edge.d1.corners.Remove (edge.v0);
					//edge.d1.corners.Remove (edge.v1);

					// remove the edge from the Corners
					edge.v0.protrudes.Remove (edge);
					edge.v1.protrudes.Remove (edge);


					// connect the two corners to create a new corner
					var newCorner = new Corner ();
					newCorner.index = edge.v0.index;
					newCorner.point = new Vector2((edge.v0.point.x + edge.v1.point.x)/2f, (edge.v0.point.y + edge.v1.point.y)/2f);//edge.v0.point - edge.v1.point;
					newCorner.ocean = edge.v0.ocean;
					newCorner.water = edge.v0.water;
					newCorner.coast = edge.v0.coast;
					newCorner.border = edge.v0.border;
					newCorner.elevation = edge.v0.elevation;
					newCorner.moisture = edge.v0.moisture;

					newCorner.touches = edge.v0.touches.Union (edge.v1.touches).ToList ();
					newCorner.protrudes = edge.v0.protrudes.Union (edge.v1.protrudes).ToList ();
					newCorner.adjacent = edge.v0.adjacent.Union (edge.v1.adjacent).ToList ();
					newCorner.adjacent.Remove (edge.v0);
					newCorner.adjacent.Remove (edge.v1);

					newCorner.river = edge.v0.river;
					newCorner.downslope = edge.v0.downslope;
					newCorner.watershed = edge.v0.watershed;
					newCorner.watershed_size = edge.v0.watershed_size;

					// move all of corner 0's edges to newCorner, except this edge
					foreach (Edge v0Edge in edge.v0.protrudes) {
						if (v0Edge != edge) {
							if (v0Edge.v0 == edge.v0 || v0Edge.v0 == edge.v1)
								v0Edge.v0 = newCorner;

							if (v0Edge.v1 == edge.v0 || v0Edge.v1 == edge.v1)
								v0Edge.v1 = newCorner;						
						}
					}

					// move all of corner 1's edges to newCorner, except this edge
					foreach (Edge v1Edge in edge.v1.protrudes) {
						if (v1Edge != edge) {
							if (v1Edge.v0 == edge.v0 || v1Edge.v0 == edge.v1)
								v1Edge.v0 = newCorner;

							if (v1Edge.v1 == edge.v0 || v1Edge.v1 == edge.v1)
								v1Edge.v1 = newCorner;						
						}
					}

					foreach (Center v0Center in edge.v0.touches) {
						//v0Center.corners.Remove (edge.v0);
						var i = v0Center.corners.IndexOf(edge.v0);
						v0Center.corners.Insert(i, newCorner);
						v0Center.corners.Remove (edge.v0);
					}

					foreach (Center v1Center in edge.v1.touches) {
						var i = v1Center.corners.IndexOf(edge.v1);
						v1Center.corners.Insert(i, newCorner);
						v1Center.corners.Remove (edge.v1);
					}



					//edge.d0.corners.Add (newCorner);
					//edge.d1.corners.Add (newCorner);



					edgesToRemove.Add (edge);
					Graph.corners.Remove (edge.v0);
					Graph.corners.Remove (edge.v1);
					Graph.corners.Add (newCorner);
				}			
			}

			foreach (Edge edge in edgesToRemove) {
				Graph.edges.Remove (edge);
			}
		}


		int CountBlocks()
		{
			int blocks = 0;
			foreach (var center in Graph.centers) {
				if (center.biome != Biome.Ocean)
					blocks++;
			}
			return blocks;
		}

        internal void Click(Vector2 point)
        {
            SelectedCenter = Graph.centers.FirstOrDefault(p => p.PointInside(point.x, point.y));
        }
    }
}
