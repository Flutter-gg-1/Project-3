import 'package:flutter/material.dart';
import 'package:project3/pages/challenges_screen.dart';
import 'package:project3/pages/profile_screen.dart';
import 'package:project3/pages/second_screen.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String currentText = "Coming soon.";
  @override
  void initState() {
    super.initState();
    _animateText();
  }

  void _animateText() async {
    List<String> texts = ["Coming soon.", "Coming soon..", "Coming soon..."];
    int currentIndex = 0;

    while (mounted) {
      // Loop as long as the widget is active
      setState(() {
        currentText = texts[currentIndex];
      });
      await Future.delayed(const Duration(seconds: 1));
      currentIndex = (currentIndex + 1) % texts.length;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondScreen()));
              },
              icon: const Icon(Icons.house),
              iconSize: 31,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChallengesScreen()));
              },
              icon: const Icon(Icons.track_changes_outlined),
              iconSize: 31,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()));
              },
              icon: const Icon(Icons.people_alt),
              iconSize: 31,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
              iconSize: 31,
              color: Colors.amber,
            )
          ],
        ),
      ),
      body: Center(
        child: Text(
          currentText,
          style: const TextStyle(fontSize: 35, color: Colors.amber),
        ),
      ),
    );
  }
}
