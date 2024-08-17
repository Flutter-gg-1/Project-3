import 'package:education_app/widgets/challenges_section.dart';
import 'package:education_app/widgets/home/bottom_navigation.dart';
import 'package:flutter/material.dart';
class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 245, 242, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 21, horizontal: 25),
                height: 80,
                width: 428,
                color: const Color.fromRGBO(196, 196, 196, 0.4),
                child: const Center(
                  child: Text(
                    'Challenges',
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.9),
                        fontSize: 30,
                        fontWeight: FontWeight.w400),
                  ),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [ChallengesSection()],
            ),
          )
        ],
      ),
      bottomSheet: const BottomNavigation(active: 2),
    );
  }
}
