import 'package:educational_kids_project/pages/challenges_page.dart';
import 'package:educational_kids_project/pages/home_page.dart';
import 'package:educational_kids_project/pages/profile_page.dart';
import 'package:educational_kids_project/pages/settings_page.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  Color selectedColor = const Color(0xff41AC78);
  List<Widget> myWidget = [
    const HomePage(),
    const ChallengesPage(),
    const ProfilePage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myWidget[currentIndex], // Main content here
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xCCE5E5E5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: selectedColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.crisis_alert), label: "challenges"),
          BottomNavigationBarItem(icon: Icon(Icons.person_2), label: "profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "settings"),
        ],
        onTap: (int newIndex) {
          setState(() {
            currentIndex = newIndex;
            if (currentIndex == 0) {
              selectedColor = const Color(0xff41AC78);
            } else if (currentIndex == 1) {
              selectedColor = const Color(0xffDC3F00);
            } else if (currentIndex == 2) {
              selectedColor = const Color(0xffAB70DF);
            } else if (currentIndex == 3) {
              selectedColor = const Color.fromARGB(255, 52, 141, 243);
            } 
            
          });
        },
      ),
    );
  }
}
