import 'package:flutter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/modies/api.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
