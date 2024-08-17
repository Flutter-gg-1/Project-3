import 'package:flutter/material.dart';
import 'package:project3/pages/profile_screen.dart';
import 'package:project3/pages/second_screen.dart';
import 'package:project3/pages/settings_screen.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffE5E5E5),
        title: const Center(
          child: Text(
            "Challenges",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          ),
        ),
      ),
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
              onPressed: () {},
              icon: const Icon(Icons.track_changes_outlined),
              iconSize: 31,
              color: const Color(0xffdc3f00),
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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsScreen()));
              },
              icon: const Icon(Icons.settings),
              iconSize: 31,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 31,
              ),
              Container(
                width: 378,
                height: 116,
                decoration: BoxDecoration(
                    color: const Color(0xfffbf5f2),
                    borderRadius: BorderRadius.circular(20),
                    border:
                        Border.all(width: 3, color: const Color(0xffe2ddda))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/Group.png"),
                    const SizedBox(
                      width: 20,
                    ),
                    const Expanded(
                      child: Column(
                        children: [
                          Text(
                            "Complete 1000 word streak",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Win 1000XP along with 300 diamonds.",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 31,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Achievements",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 31,
              ),
              Container(
                width: 378,
                height: 116,
                decoration: BoxDecoration(
                    color: const Color(0xfffbf5f2),
                    borderRadius: BorderRadius.circular(20),
                    border:
                        Border.all(width: 3, color: const Color(0xffe2ddda))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/StuckatHomeVerticalPainting1.png"),
                    const SizedBox(
                      width: 20,
                    ),
                    const Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 75),
                            child: Text(
                              "Lorem Ipsum ",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Text(
                            "is simply dummy text of the printing and typesetting industry.",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 42,
              ),
              Container(
                width: 378,
                height: 116,
                decoration: BoxDecoration(
                    color: const Color(0xfffbf5f2),
                    borderRadius: BorderRadius.circular(20),
                    border:
                        Border.all(width: 3, color: const Color(0xffe2ddda))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/PebblePeoplePlant 2.png"),
                    const SizedBox(
                      width: 20,
                    ),
                    const Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 93),
                            child: Text(
                              "Lorem Ipsum",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Text(
                            "is simply dummy text of the printing and typesetting industry.",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                width: 378,
                height: 116,
                decoration: BoxDecoration(
                    color: const Color(0xfffbf5f2),
                    borderRadius: BorderRadius.circular(20),
                    border:
                        Border.all(width: 3, color: const Color(0xffe2ddda))),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/PebblePeople Basketball.png"),
                    const SizedBox(
                      width: 20,
                    ),
                    const Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 69),
                            child: Text(
                              "Lorem Ipsum",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Text(
                            "is simply dummy text of the printing and typesetting industry.",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
