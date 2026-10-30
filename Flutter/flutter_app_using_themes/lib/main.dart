import 'package:flutter/material.dart';
import 'package:flutter_app_using_themes/home.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 227, 194, 47),
          brightness: Brightness.light,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 20, color: Colors.white),
          displayLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
      home: Scaffold(body: Center(child: Home())),
    );
  }
}
