import 'package:educational_kids_game/src/screens/challenge_screen.dart';
import 'package:educational_kids_game/src/screens/home_screen.dart';
import 'package:educational_kids_game/src/screens/profile_screen.dart';
import 'package:educational_kids_game/src/screens/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';


class CustomBottomNavigationBar extends StatefulWidget {

  const CustomBottomNavigationBar({super.key,});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
    int _currentIndex = 0;
  final screens = [
    const HomeScreen(),
    const ChallengeScreen(),
    const ProfileScreen(),
    const SettingsScreen()
  ];

  void onTap(int newIndex) {
    setState(() {
        _currentIndex = newIndex;
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],

      bottomNavigationBar:
    BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: onTap,
      backgroundColor: const Color(0xffE5E5E5),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            FluentIcons.home_12_regular,
            color: Color.fromRGBO(0, 0, 0, 0.5),
            size: 30,
          ),
          activeIcon: Icon(
            FluentIcons.home_12_filled,
            color: Color(0xff41AC78),
            size: 35,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FluentIcons.target_arrow_16_regular,
            color: Color.fromRGBO(0, 0, 0, 0.5),
            size: 30,
          ),
          activeIcon: Icon(
            FluentIcons.target_arrow_16_filled,
            color: Color(0xffDC3F00),
            size: 35,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FluentIcons.people_12_regular,
            color: Color.fromRGBO(0, 0, 0, 0.5),
            size: 30,
          ),
          activeIcon: Icon(
            FluentIcons.people_12_filled,
            color: Color(0xffAB70DF),
            size: 35,
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FluentIcons.settings_20_regular,
            color: Color.fromRGBO(0, 0, 0, 0.5),
            size: 30,
          ),
          activeIcon: Icon(
            FluentIcons.settings_20_filled,
            color: Color(0xff6884F6),
            size: 35,
          ),
          label: "",
        ),
      ],
    ));
  }
}
