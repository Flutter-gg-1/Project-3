import 'package:flutter/material.dart';
import 'package:p_1_kids_game/src/app.dart';
import 'package:p_1_kids_game/src/screens/game_screen.dart';
import 'package:p_1_kids_game/src/screens/home_screen.dart';
import 'package:p_1_kids_game/src/screens/login_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // To hide debug banner
      debugShowCheckedModeBanner: false,

      title: 'Educational Kids Game',
      initialRoute: '/',

      // Routes TODO update Screens when you finished
      routes: {
        '/': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/game': (context) => GameScreen(),
        '/challenges': (context) => const HomeScreen(),
        '/profile': (context) => const HomeScreen(),
        '/settings': (context) => const HomeScreen(),
      },
    );
  }
}
