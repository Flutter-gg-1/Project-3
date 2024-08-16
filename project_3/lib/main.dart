import 'package:flutter/material.dart';
import 'core/all_files.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'RobotoBold', //or 'RobotoRegular'
      ),
      home: const HomeScreen(),
    );
  }
}
