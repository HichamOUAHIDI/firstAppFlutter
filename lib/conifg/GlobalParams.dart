import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlobalParams {
  static List<Map<String, dynamic>> menus = [
    {
      "title": "Counter",
      "icon": const Icon(
        Icons.add,
        color: Colors.lightGreen,
      ),
      "route": "/counter"
    },
    {
      "title": "Meteo",
      "icon": const Icon(Icons.camera, color: Colors.lightGreen),
      "route": "/meteo"
    },
    {
      "title": "Gallery",
      "icon": const Icon(Icons.map, color: Colors.lightGreen),
      "route": "/gallery"
    },
  ];
}
