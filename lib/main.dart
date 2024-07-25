import 'package:flutter/material.dart';
import 'package:neighborhoodwatch/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neighborhood Watch',
      theme: ThemeData(
        // Define your color scheme here
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 16.0),
          labelLarge: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
      home: HomePage(), // Use HomePage from screen.dart
    );
  }
}
