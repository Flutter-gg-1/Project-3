import 'package:education_kids_game/src/customWidgets/course_title.dart';
import 'package:education_kids_game/src/customWidgets/unit_widget.dart';
import 'package:education_kids_game/src/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                MyFlutterApp.home,
                color: Colors.amber,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(MyFlutterApp.vactor, color: Colors.amber), label: ""),
          BottomNavigationBarItem(
              icon: Icon(MyFlutterApp.profile, color: Colors.amber), label: ""),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.amber), label: "")
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
              child: Row(
                children: [
                  Image.asset("assets/icons/fire_icon.png"),
                  const SizedBox(width: 10),
                  const Text(
                    "3",
                    style: TextStyle(fontSize: 25, color: Color(0xffEB9F4A)),
                  ),
                  const SizedBox(width: 40),
                  Image.asset("assets/icons/box_icon.png"),
                  const SizedBox(width: 10),
                  const Text(
                    "1432 XP",
                    style: TextStyle(fontSize: 25, color: Color(0xff338F9B)),
                  ),
                  const SizedBox(width: 40),
                  Image.asset("assets/icons/like_icon.png"),
                  const SizedBox(width: 10),
                  Image.asset("assets/icons/infinite_icon.png")
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
            const Row(children: [UnitWidget(prograss: 30), LockUnit()])
          ],
        ),
      ),
    );
  }
}
