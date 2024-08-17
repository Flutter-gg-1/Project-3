import 'package:education_kids_game/src/Screens/course_screen.dart';
import 'package:education_kids_game/src/customWidgets/course_title.dart';
import 'package:education_kids_game/src/customWidgets/unit_widget.dart';
import 'package:education_kids_game/src/customWidgets/custom_icons_icons.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 71),
            child: Container(
              width: double.infinity,
              height: 71,
              padding: const EdgeInsets.symmetric(horizontal: 50),
              color: const Color(0xffE5E5E5),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
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
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
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
