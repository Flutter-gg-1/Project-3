import 'package:education_kids_game/src/customWidgets/custom_card_widget.dart';
import 'package:flutter/material.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 71),
              child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 71,
                  color: const Color(0xffE5E5E5),
                  child: const Text("Challenges",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "fonts/Roboto-Regular.ttf")))),
        ),
        body: ListView(
          padding: const EdgeInsets.all(30),
          children: const [
            Column(
              children: [
                AchievementsCardWidget(
                    imgUrl: "assets/read.png",
                    title: "Complete 1000 word streak",
                    subTitle: "Win 1000XP along with 300 diamonds.",
                    fontWeight: FontWeight.w400),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Achievements",
                      style: TextStyle(
                          fontFamily: "fonts/Roboto-Regular.ttf",
                          fontSize: 30)),
                ),
                SizedBox(height: 20),
                AchievementsCardWidget(
                    imgUrl: "assets/Painting.png",
                    title: "Lorem Ipsum ",
                    subTitle:
                        "is simply dummy text of the printing and typesetting industry.",
                    fontWeight: FontWeight.w600),
                SizedBox(height: 20),
                AchievementsCardWidget(
                    imgUrl: "assets/Plant.png",
                    title: "Lorem Ipsum ",
                    subTitle:
                        "is simply dummy text of the printing and typesetting industry.",
                    fontWeight: FontWeight.w600),
                SizedBox(height: 20),
                AchievementsCardWidget(
                    imgUrl: "assets/Basketball.png",
                    title: "Lorem Ipsum ",
                    subTitle:
                        "is simply dummy text of the printing and typesetting industry.",
                    fontWeight: FontWeight.w600)
              ],
            )
          ],
        ));
  }
}
