import 'package:flutter/material.dart';               // imports material design widgets and properities
import 'package:project3/widgets/bottom_navbar.dart'; // widget represents bottom navigation bar

// Settings page
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(vertical: 15),
              margin: const EdgeInsets.only(top: 28),
              color: const Color(0xccE5E5E5),
              child: const Text("Settings",style: TextStyle(fontSize: 30, color: Color.fromRGBO(0, 0, 0, 0.9))))
          ]
        )
      ),
      bottomNavigationBar: const BottomNavbar(currentIndex: 3, iconColor: Colors.blue)
    );
  }
}