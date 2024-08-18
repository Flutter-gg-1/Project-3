import 'package:flutter/material.dart';
import 'package:p_1_kids_game/src/theme/my_color.dart';
import 'package:p_1_kids_game/src/widgets/bottom_navigation_bar.dart';
import 'package:p_1_kids_game/src/widgets/challenge_card.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      bottomNavigationBar: MyBottomNavigationBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18, bottom: 28),
                child: Container(
                  color: MyColor.primaryBottomBarBG,
                  height: 50,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Challenges',
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const ChallengeCard(
                img: "assets/images/girl_reading.png",
                description: "Win 1000XP along with 300 diamonds.",
                title: "Complete 1000 word streak",
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18, top: 30, bottom: 30),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child:
                        Text("Achievements", style: TextStyle(fontSize: 25))),
              ),
              const ChallengeCard(
                img: "assets/images/vertical_painting.png",
                description: "Win 1000XP along with 300 diamonds.",
                title: "Complete 1000 word streak",
              ),
              const SizedBox(
                height: 35,
              ),
              const ChallengeCard(
                img: "assets/images/plant.png",
                title: "Lorem Ipsum ",
                description:
                    "is simply dummy text of the printing and typesetting industry.",
              ),
              const SizedBox(
                height: 35,
              ),
              const ChallengeCard(
                img: "assets/images/basketball.png",
                title: "Lorem Ipsum ",
                description:
                    "is simply dummy text of the printing and typesetting industry.",
              ),
              const SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
