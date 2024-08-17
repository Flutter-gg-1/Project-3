import 'package:education_kids_game/src/course_screen.dart';
import 'package:education_kids_game/src/customWidgets/course_title.dart';
import 'package:education_kids_game/src/customWidgets/unit_widget.dart';
import 'package:education_kids_game/src/custom_icons_icons.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 60),
              width: double.infinity,
              height: 71,
              padding: const EdgeInsets.symmetric(horizontal: 50),
              color: const Color(0xffE5E5E5),
              child: const Row(
                children: [
                  Icon(CustomIcons.fire, size: 30, color: Color(0xffEB9F4A)),
                  SizedBox(width: 10),
                  Text(
                    "3",
                    style: TextStyle(fontSize: 25, color: Color(0xffEB9F4A)),
                  ),
                  SizedBox(width: 40),
                  Icon(CustomIcons.box, size: 25, color: Color(0xff338F9B)),
                  SizedBox(width: 10),
                  Text(
                    "1432 XP",
                    style: TextStyle(fontSize: 25, color: Color(0xff338F9B)),
                  ),
                  SizedBox(width: 40),
                  Icon(CustomIcons.heart, size: 30, color: Color(0xffDC3F00)),
                  SizedBox(width: 10),
                  Icon(CustomIcons.infinity, size: 30, color: Color(0xffDC3F00))
                ],
              ),
            ),
            const CourseTitle(
              title: "Logical reasoning",
              rate: " 18/40",
              space: 20,
            ),
            const Row(children: [UnitWidget(prograss: 60), LockUnit()]),
            const CourseTitle(
              title: "Artistic thinking",
              rate: " 35/40",
              space: 50,
            ),
            const Row(children: [UnitWidget(prograss: 100), LockUnit()]),
            const CourseTitle(
              title: "Verbal skills",
              rate: " 3/40",
              space: 120,
            ),
            Row(children: [
              InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const CourseScreen();
                    }));
                  },
                  child: const UnitWidget(prograss: 30)),
              const LockUnit()
            ])
          ],
        ),
      ),
    );
  }
}
