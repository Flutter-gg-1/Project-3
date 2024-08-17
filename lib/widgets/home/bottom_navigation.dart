import 'package:education_app/screens/challenges_screen.dart';
import 'package:education_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import '../../screens/home_screen.dart';
import '../../screens/settings_screen.dart';

class BottomNavigation extends StatelessWidget {
  static final List<String> imagePaths = [
    'assets/images/home.png',
    'assets/images/target.png',
    'assets/images/profile.png',
    'assets/images/settings.png'
  ];
  final int active;
  const BottomNavigation({super.key, required this.active});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        height: 80,
        backgroundColor: const Color.fromRGBO(229, 229, 229, 0.8),
        destinations: [
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex) {
                return const HomeScreen();
              }));
            },
            child: Image.asset(
              imagePaths[0],
              width: 35.19,
              height: 29.07,
              color: active == 1
                  ? const Color.fromRGBO(65, 172, 120, 1)
                  : const Color.fromRGBO(0, 0, 0, 0.7),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex) {
                return const ChallengesScreen();
              }));
            },
            child: Image.asset(
              imagePaths[1],
              width: 35.19,
              height: 29.07,
              color: active == 2
                  ? Colors.redAccent[700]
                  : const Color.fromRGBO(0, 0, 0, 0.7),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex) {
                return const ProfileScreen();
              }));
            },
            child: Image.asset(
              imagePaths[2],
              width: 35.19,
              height: 29.07,
              color: active == 3
                  ? Colors.purpleAccent[700]
                  : const Color.fromRGBO(0, 0, 0, 0.7),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex) {
                return const SettingsScreen();
              }));
            },
            child: Image.asset(
              imagePaths[3],
              width: 35.19,
              height: 29.07,
              color: active == 4
                  ? Colors.orange
                  : const Color.fromRGBO(0, 0, 0, 0.7),
            ),
          ),
        ]);
  }
}
