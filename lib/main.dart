import 'package:flutter/material.dart';
import 'package:flutter_app_broken_advanced/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Produits',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(), // Écran de démarrage
    );
  }
}
