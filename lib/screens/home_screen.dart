import 'dart:developer';                              // library provides developer tools
import 'package:flutter/material.dart';               // imports material design widgets and properities
import 'package:project3/widgets/bottom_navbar.dart'; // widget represents bottom navigation bar
import 'package:project3/widgets/course.dart';        // widget represents course

// Home page
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> courses = [];
  List<String> scores = [];
  List<int> progresses = [];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    courses = ["Logical reasoning", "Artistic thinking", "Verbal skills"];
    scores = ["18", "35", "3"];
    progresses = [73, 124, 39];
    log("data is fetched");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFBF5F2),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                margin: const EdgeInsets.only(top: 28),
                color: const Color(0xccE5E5E5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/streak.png"),
                        const SizedBox(width: 10),
                        const Text("3",style:TextStyle(fontSize: 25, color: Color(0xffEB9F4A)))
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("assets/images/treasure.png"),
                        const SizedBox(width: 10),
                        const Text("1432 XP",style:TextStyle(fontSize: 25, color: Color(0xff338F9B)))
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("assets/images/heart.png"),
                        const SizedBox(width: 10),
                        Image.asset("assets/images/infinity.png"),
                      ],
                    ),
                  ],
                ),
              ),
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
                    }),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavbar(currentIndex: 0, iconColor:Color(0xff41AC78)),
      );
  }
}