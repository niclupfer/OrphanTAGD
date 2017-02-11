﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

namespace Assets.Map
{
    public class MapTexture
    {
        int _textureScale;
        public MapTexture(int textureScale)
        {
            _textureScale = textureScale;
        }

        public void AttachTexture(GameObject plane, Map map)
        {

            int _textureWidth = (int)map.Width * _textureScale;
            int _textureHeight = (int)map.Height * _textureScale;

            Texture2D texture = new Texture2D(_textureWidth, _textureHeight);
            texture.SetPixels(Enumerable.Repeat(Color.magenta, _textureWidth * _textureHeight).ToArray());

            var lines = map.Graph.edges.Where(p => p.v0 != null).Select(p => new[] 
            { 
                p.v0.point.x, p.v0.point.y,
                p.v1.point.x, p.v1.point.y
            }).ToArray();

			var roads = map.Graph.edges.Where(p => p.d0.biome != Biome.Ocean && p.d1.biome != Biome.Ocean).Select(p => new[] 
				{ 
					p.v0.point.x, p.v0.point.y,
					p.v1.point.x, p.v1.point.y
				}).ToArray();

			var coastRoads = map.Graph.edges.Where(p => (p.d0.biome == Biome.Ocean) ^ (p.d1.biome == Biome.Ocean)).Select(p => new[] 
				{ 
					p.v0.point.x, p.v0.point.y,
					p.v1.point.x, p.v1.point.y
				}).ToArray();

			var minRoadLength = 1f;
			var shortRoads = map.Graph.edges.Where(p => p.v0 != null && Mathf.Abs((p.v0.point - p.v1.point).magnitude) < minRoadLength).Select(p => new[] 
				{ 
					p.v0.point.x, p.v0.point.y,
					p.v1.point.x, p.v1.point.y
				}).ToArray();

            foreach (var c in map.Graph.centers)
                texture.FillPolygon(c.corners.Select(p => new Vector2(p.point.x * _textureScale, p.point.y * _textureScale)).ToArray(), BiomeProperties.Colors[c.biome]);



            foreach (var road in roads)
				DrawLine(texture, road[0], road[1], road[2], road[3], Color.black);

			foreach (var road in coastRoads)
				DrawLine(texture, road[0], road[1], road[2], road[3], Color.red);

			foreach (var road in shortRoads)
				DrawLine(texture, road[0], road[1], road[2], road[3], Color.yellow);

			/*
            foreach (var line in map.Graph.edges.Where(p => p.river > 0 && !p.d0.water && !p.d1.water))
                DrawLine(texture, line.v0.point.x, line.v0.point.y, line.v1.point.x, line.v1.point.y, Color.blue);
*/
            texture.Apply();

			plane.GetComponent<Renderer>().material.mainTexture = texture;
            //plane.transform.localPosition = new Vector3(map.Width / 2, map.Height / 2, 1);
        }

        private void DrawLine(Texture2D texture, float x0, float y0, float x1, float y1, Color color)
        {
            texture.DrawLine((int)(x0 * _textureScale), (int)(y0 * _textureScale), (int)(x1 * _textureScale), (int)(y1 * _textureScale), color);
        }
    }
}
