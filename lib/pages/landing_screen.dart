import 'package:educational_kids_game/pages/main%20Pages/challenges_screen.dart';
import 'package:educational_kids_game/pages/main%20Pages/home_screen.dart';
import 'package:educational_kids_game/pages/main%20Pages/profile_screen.dart';
import 'package:educational_kids_game/pages/main%20Pages/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    ChallengesScreen(),
    ProfileScreen(),
    SettingScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbf5f2),
      body: SafeArea(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(color: Color(0xff41AC78), Icons.home),
            label: '',
            backgroundColor: Color(0xfff3edf7),
          ),
          BottomNavigationBarItem(
            icon: Icon(color: Color(0xffDC3F00), FontAwesomeIcons.bullseye),
            label: '',
            backgroundColor: Color(0xfff3edf7),
          ),
          BottomNavigationBarItem(
            icon: Icon(color: Color(0xffAB70DF), Icons.people),
            label: '',
            backgroundColor: Color(0xfff3edf7),
          ),
          BottomNavigationBarItem(
            icon: Icon(color: Colors.grey, Icons.settings),
            label: '',
            backgroundColor: Color(0xfff3edf7),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
