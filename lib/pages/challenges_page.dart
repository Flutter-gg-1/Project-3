import 'package:flutter/material.dart';

class ChallengesPage extends StatelessWidget {
  const ChallengesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      body: Expanded(child: ListView(
        children: [
          const SizedBox(
            height: 40,
          ),
          Container(
            color: const Color(0xffE5E5E5),
            padding: const EdgeInsets.all(20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Challenges",
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  ListTile(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    leading: Image.asset("lib/assets/challenges/Group.png"),
                    title: const Text("Complete 1000 word streak"),
                    subtitle: const Text("Win 1000XP along with 300 diamonds."),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Achievements",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    leading: Image.asset(
                        "lib/assets/challenges/Stuck at Home Vertical Painting 1.png"),
                    title: const Text("Lorem Ipsum "),
                    subtitle: const Text(
                        "is simply dummy text of the printing and typesetting industry."),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    leading: Image.asset(
                        "lib/assets/challenges/Pebble People Plant 2.png"),
                    title: const Text("Lorem Ipsum "),
                    subtitle: const Text(
                        "is simply dummy text of the printing and typesetting industry."),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.grey, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    leading: Image.asset(
                        "lib/assets/challenges/Pebble People Basketball.png"),
                    title: const Text("Lorem Ipsum "),
                    subtitle: const Text(
                        "is simply dummy text of the printing and typesetting industry."),
                  ),
                ],
              )),
        ],
      ),
    ));
  }
}
