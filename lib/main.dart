import 'package:education_app/screens/challenges_screen.dart';
import 'package:education_app/screens/login_screen.dart';
import 'package:education_app/screens/home_screen.dart';
import 'package:education_app/screens/profile_screen.dart';
import 'package:education_app/screens/topic_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Roboto'),
        home: const LoginScreen());
  }
}
