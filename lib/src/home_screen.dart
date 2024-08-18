import 'package:educational_kids_game/src/challenges_screen.dart';
import 'package:educational_kids_game/src/profile_screen.dart';
import 'package:educational_kids_game/src/section_screen.dart';
import 'package:educational_kids_game/src/soon_screen.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  List body = const [
    SectionScreen(),
    ChallengesScreen(),
    ProfileScreen(),
    SoonScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFBF5F2),
      ),


      body: body[_currentIndex],


      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:  Colors.green,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        
        backgroundColor: const Color(0xFFFBF5F2),
        currentIndex: _currentIndex,
        onTap: (newIndex) => setState(() {
          _currentIndex =newIndex;
        }),
        items: const [
          BottomNavigationBarItem(icon: Icon(LineAwesome.home_solid,),label: 'home'),
          BottomNavigationBarItem(icon: Icon(LineAwesome.bullseye_solid),label: 'home'),
          BottomNavigationBarItem(icon: Icon(Bootstrap.person),label: 'home'),
          BottomNavigationBarItem(icon: Icon(AntDesign.setting_outline),label: 'home'),
          ],
      ),
    );
  }
}
