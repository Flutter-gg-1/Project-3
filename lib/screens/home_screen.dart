import 'package:flutter/material.dart';
import '../widgets/topic_box.dart';
import '../widgets/home_icons.dart';
import '../widgets/bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 245, 242, 1),
      body: Padding(
          padding: const EdgeInsets.only(top: 70),
          child: Column(
            children: [
              Container(
                height: 71,
                width: 428,
                color: const Color.fromRGBO(196, 196, 196, 0.4),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HomeIcons(
                        imagePath: 'assets/images/fire.png',
                        text: '3',
                        color: Color.fromRGBO(235, 159, 74, 1)),
                    HomeIcons(
                        imagePath: 'assets/images/xp.png',
                        text: '1432 XP',
                        color: Color.fromRGBO(51, 143, 155, 1)),
                    HomeIcons(
                        imagePath: 'assets/images/heart.png',
                        text: '\u221E',
                        color: Color.fromRGBO(220, 63, 0, 1))
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: Column(
                        children: [
                          TopicBox(
                            activityName: 'Logical Reasoning',
                            score: 18,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          TopicBox(
                            activityName: 'Artistic Thinking',
                            score: 35,
                          ),
                           SizedBox(
                            height: 30,
                          ),
                          TopicBox(
                            activityName: 'Verbal Skills',
                            score: 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
      bottomSheet: const BottomNavigation(active: 1)
    );
  }
}
