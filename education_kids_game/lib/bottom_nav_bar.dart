import 'package:education_kids_game/challenges_screen.dart';
import 'package:education_kids_game/home_screen.dart';
import 'package:flutter/material.dart';

class ButtomNavBar extends StatefulWidget {
  const ButtomNavBar({super.key});

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  int currentIndex = 0;
  Color selectedColor = Color(0xff41AC78);
  List<Widget> myWidget = [HomeScreen(),ChallengesScreen()];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffE5E5E5).withOpacity(0.8),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        selectedItemColor: selectedColor,
        useLegacyColorScheme: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.crisis_alert), label: "My Goals"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2), label: "My Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        onTap: (int newIndex) {
          setState(() {
            currentIndex = newIndex;
            if (currentIndex == 1) {
              selectedColor = Color(0xffDC3F00);
            } else if (currentIndex == 2) {
              selectedColor = Color(0xffAB70DF);
            } else {
              selectedColor = Color(0xff41AC78);
            }
          });
        },
      ),
      backgroundColor: Colors.white,
      body: myWidget[currentIndex],
    );
  }
}
