import 'package:flutter/material.dart';
import 'package:workspacefrontend/ui/pages/counter.dart';
import 'package:workspacefrontend/ui/pages/gallery.dart';
import 'package:workspacefrontend/ui/pages/home.dart';
import 'package:workspacefrontend/ui/pages/meteo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => HomePage(),
        "/meteo": (context) => MeteoPage(),
        "/gallery": (context) => GalleryPage(),
        "/counter": (context) => CounterPage()
      },
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      initialRoute: "/home",
    );
  }
}
