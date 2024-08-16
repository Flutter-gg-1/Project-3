import 'package:flutter/material.dart';                 // imports material design widgets and properities
import 'package:project3/screens/login_screen.dart';    // login page

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen()
    );
  }
}