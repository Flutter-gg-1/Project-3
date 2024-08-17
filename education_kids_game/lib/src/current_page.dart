import 'package:education_kids_game/src/challenges_screen.dart';
import 'package:education_kids_game/src/customWidgets/custom_icons_icons.dart';
import 'package:education_kids_game/src/home_screen.dart';
import 'package:education_kids_game/src/profile_screen.dart';
import 'package:education_kids_game/src/setting_screen.dart';
import 'package:flutter/material.dart';

class CurrentPage extends StatefulWidget {
  const CurrentPage({super.key});

  @override
  State<CurrentPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<CurrentPage> {
  int currentNavIndex = 0;
  List pages = [
    const HomeScreen(),
    const ChallengesScreen(),
    const ProfileScreen(),
    const SettingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentNavIndex,
        onTap: (index) {
          setState(() {
            currentNavIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed, // Fixed
        backgroundColor: const Color(0xffE5E5E5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              CustomIcons.home,
              color: Color.fromARGB(255, 137, 136, 136),
              size: 30,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.target,
                  color: Color.fromARGB(255, 137, 136, 136), size: 30),
              label: "target"),
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.profile,
                  color: Color.fromARGB(255, 137, 136, 136), size: 30),
              label: "profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings,
                  color: Color.fromARGB(255, 137, 136, 136), size: 40),
              label: "settings")
        ],
      ),
    );
  }
}
