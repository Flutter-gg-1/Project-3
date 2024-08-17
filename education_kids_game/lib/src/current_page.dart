import 'package:education_kids_game/src/Screens/challenges_screen.dart';
import 'package:education_kids_game/src/customWidgets/custom_icons_icons.dart';
import 'package:education_kids_game/src/Screens/home_screen.dart';
import 'package:education_kids_game/src/Screens/profile_screen.dart';
import 'package:education_kids_game/src/Screens/setting_screen.dart';
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
  List colors = [
    Color(0xff41AC78),
    Color(0xffDC3F00),
    Color(0xffAB70DF),
    Colors.lime
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: colors[currentNavIndex],
        unselectedItemColor: const Color(0xff707070),
        selectedIconTheme: IconThemeData(color: colors[currentNavIndex]),
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
              size: 30,
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.target, size: 30), label: "target"),
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.profile, size: 30), label: "profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings, size: 40), label: "settings")
        ],
      ),
    );
  }
}
