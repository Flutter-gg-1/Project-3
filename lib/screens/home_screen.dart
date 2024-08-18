import 'package:flutter/material.dart';               // imports material design widgets and properities
import 'package:project3/widgets/stats_bar.dart';     // widget represents stats bar
import 'package:project3/widgets/course.dart';        // widget represents course
import 'package:project3/widgets/bottom_navbar.dart'; // widget represents bottom navigation bar

// Home page
class HomeScreen extends StatelessWidget {
  final List<String> courses = const ["Logical reasoning","Artistic thinking","Verbal skills"];
  final List<String> scores = const ["18", "35", "3"];
  final List<int> progresses = const [73, 124, 39];
  final List<Map<String, dynamic>> statsBarData = const [
    {'type': 'streak', "value": "3", "color": Color(0xffEB9F4A)},
    {'type': 'treasure', "value": "1432 XP", "color": Color(0xff338F9B)},
    {'type': 'heart', "value": "infinity"}
  ];

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      body: SafeArea(
        child: Column(
          children: [
            StatsBar(data: statsBarData),
            const SizedBox(height: 45),
            Flexible(
              child: ListView.builder(
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  return Course(
                    courseName: courses[index],
                    courseScore: scores[index],
                    progress: progresses[index],
                  );
                }
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavbar(currentIndex: 0, iconColor: Color(0xff41AC78)),
    );
  }
}