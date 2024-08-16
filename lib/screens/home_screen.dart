import 'dart:developer';                              // library provides developer tools
import 'package:flutter/material.dart';               // imports material design widgets and properities
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
  List<Widget> screens = [];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    courses = ["Logical reasoning", "Artistic thinking", "Verbal skills"];
    scores = ["18", "35", "3"];
    progresses = [73, 124, 39];
    screens = [const HomeScreen(),const Placeholder(),const Placeholder(), const Placeholder()];
    log("data is fetched");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFBF5F2),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15),
              margin: const EdgeInsets.only(top: 85),
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
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xcce5e5e5),
          currentIndex: currentIndex,
          selectedItemColor: const Color(0xff41AC78),
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
            setState(() {
              currentIndex = index;
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return screens[index];
              }));
            });
          },
        ),
      );
  }
}