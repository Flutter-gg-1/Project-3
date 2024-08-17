import 'package:flutter/material.dart';
import 'package:project3/pages/challenges_screen.dart';
import 'package:project3/pages/profile_screen.dart';
import 'package:project3/pages/settings_screen.dart';
import 'package:project3/pages/verbal_skills_screen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.house),
              iconSize: 31,
              color: const Color(0xff41AC78),
            ),
            IconButton(
              onPressed: () { Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ChallengesScreen()));},
              icon: const Icon(Icons.track_changes_outlined),
              iconSize: 31,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const ProfileScreen()));
              },
              icon: const Icon(Icons.people_alt),
              iconSize: 31,
            ),
            IconButton(
              onPressed: () { Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SettingsScreen()));},
              icon: const Icon(Icons.settings),
              iconSize: 31,
            )
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade300,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Icon(
                  Icons.local_fire_department_rounded,
                  color: Color(0xffEB9F4A),
                  size: 35,
                ),
                Text(
                  "3",
                  style: TextStyle(color: Color(0xffEB9F4A), fontSize: 25),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.broken_image_rounded,
                  color: Color(0xff338F9B),
                  size: 35,
                ),
                Text(
                  "1432 XP",
                  style: TextStyle(color: Color(0xff338F9B), fontSize: 25),
                )
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.favorite,
                  color: Color(0xffDC3F00),
                  size: 35,
                ),
                Text(
                  "∞",
                  style: TextStyle(color: Color(0xffDC3F00), fontSize: 29),
                )
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 53,
              ),
              Row(
                children: [
                  const Text(
                    "Logical reasoning",
                    style: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto"),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Image.asset("assets/Vector.png"),
                  const Text("18/40")
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VerbalSkills()));
                    },
                    child: Container(
                      height: 227,
                      width: 179,
                      decoration: BoxDecoration(
                          color: const Color(0xffe5e1df),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 17,
                          ),
                          const Text(
                            "Unit 1",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"),
                          ),
                          const SizedBox(
                            height: 120,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Image.asset(
                                    "assets/Vector.png",
                                    width: 25,
                                    height: 25,
                                  ),
                                ),
                                const Expanded(
                                  child: LinearProgressIndicator(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                        topLeft: Radius.elliptical(20, 50)),
                                    minHeight: 13,
                                    value: 0.4,
                                    backgroundColor: Color(0xffb6b1af),
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Color(0xffecc055)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Container(
                      height: 227,
                      width: 179,
                      decoration: BoxDecoration(
                          color: const Color(0xffe5e1df),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Icon(
                        Icons.lock,
                        size: 60,
                        color: Colors.black54,
                      )),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  const Text(
                    "Artistic thinking",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto"),
                  ),
                  const SizedBox(
                    width: 45,
                  ),
                  Image.asset("assets/Vector.png"),
                  const Text("35/40")
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VerbalSkills()));
                    },
                    child: Container(
                      height: 227,
                      width: 179,
                      decoration: BoxDecoration(
                          color: const Color(0xffe5e1df),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 17,
                          ),
                          const Text(
                            "Unit 1",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"),
                          ),
                          const SizedBox(
                            height: 120,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Image.asset(
                                    "assets/Vector.png",
                                    width: 25,
                                    height: 25,
                                  ),
                                ),
                                const Expanded(
                                  child: LinearProgressIndicator(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                        topLeft: Radius.elliptical(20, 50)),
                                    minHeight: 13,
                                    value: 0.8,
                                    backgroundColor: Color(0xffb6b1af),
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Color(0xffecc055)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Container(
                      height: 227,
                      width: 179,
                      decoration: BoxDecoration(
                          color: const Color(0xffe5e1df),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Icon(
                        Icons.lock,
                        size: 60,
                        color: Colors.black54,
                      )),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                children: [
                  const Text(
                    "Verbal skills",
                    style: const TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Roboto"),
                  ),
                  const SizedBox(
                    width: 93,
                  ),
                  Image.asset("assets/Vector.png"),
                  const SizedBox(
                    width: 24,
                  ),
                  const Text("3/40")
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const VerbalSkills()));
                    },
                    child: Container(
                      height: 227,
                      width: 179,
                      decoration: BoxDecoration(
                          color: const Color(0xffe5e1df),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 17,
                          ),
                          const Text(
                            "Unit 1",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Roboto"),
                          ),
                          const SizedBox(
                            height: 120,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 5),
                                  child: Image.asset(
                                    "assets/Vector.png",
                                    width: 25,
                                    height: 25,
                                  ),
                                ),
                                const Expanded(
                                  child: LinearProgressIndicator(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(30),
                                        bottomRight: Radius.circular(30),
                                        topLeft: Radius.elliptical(20, 50)),
                                    minHeight: 13,
                                    value: 0.1,
                                    backgroundColor: Color(0xffb6b1af),
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        Color(0xffecc055)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 13,
                  ),
                  Container(
                      height: 227,
                      width: 179,
                      decoration: BoxDecoration(
                          color: const Color(0xffe5e1df),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Icon(
                        Icons.lock,
                        size: 60,
                        color: Colors.black54,
                      )),
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
