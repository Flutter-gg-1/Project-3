import 'package:flutter/material.dart';
import '../widgets/challenge_cards.dart';

class ChallengeScreen extends StatefulWidget {
  const ChallengeScreen({super.key});

  @override
  State<ChallengeScreen> createState() => _ChallengeScreenState();
}

//challeng screen with diffrent cards
class _ChallengeScreenState extends State<ChallengeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xffFBF5F2),
          toolbarHeight: 30,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: Container(
                  height: 50,
                  color: const Color(0xffE5E5E5),
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Challenge", style: TextStyle(fontSize: 28))
                      ])))),
      body: Center(
        child: Column(
          children: [
            challengeCadrs(
              imagePath: "assets/Group.png",
              title: const Text(
                "Complete 1000 word streak",
                style: TextStyle(fontSize: 20),
              ),
              subtitle: const Text(
                "Win 1000XP along with 300 diamonds.",
                style: TextStyle(fontSize: 15),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 160, top: 20),
              child: Text(
                "Achievements",
                style: TextStyle(fontSize: 30),
              ),
            ),
            challengeCadrs(
              imagePath: "assets/Stuck at Home Vertical Painting 1-6.png",
              title: const Text(
                "Lorem Ipsum ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "is simply dummy text of the printing and typesetting industry.",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            challengeCadrs(
              imagePath: "assets/Pebble People Plant 2-2.png",
              title: const Text(
                "Lorem Ipsum ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "is simply dummy text of the printing and typesetting industry.",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            challengeCadrs(
              imagePath: "assets/Pebble People Basketball-3.png",
              title: const Text(
                "Lorem Ipsum ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                "is simply dummy text of the printing and typesetting industry.",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
