import 'package:flutter/material.dart';
import 'package:project3/screens/home_screen.dart';
import 'package:project3/screens/profile_screen.dart';

class BottomNavbar extends StatelessWidget {
  final int currentIndex;
  final Color iconColor;
  final List<Widget> screens = const [HomeScreen(),Placeholder(),ProfileScreen(), Placeholder()];

  const BottomNavbar({super.key, required this.currentIndex, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xcce5e5e5),
          currentIndex: currentIndex,
          selectedItemColor: iconColor,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 40,
          items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.track_changes_outlined), label: "Challenges"),
          BottomNavigationBarItem(icon: Icon(Icons.people_sharp), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
          ],
          onTap: (index) {
            if(index!=currentIndex) {
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return screens[index];
              }));
            }
          },
        );
  }
}