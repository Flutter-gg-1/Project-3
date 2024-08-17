import 'package:education_app/widgets/challenges/challenge_card.dart';
import 'package:flutter/material.dart';

class ChallengesSection extends StatelessWidget {
  static final List<String> imagePaths = [
    'assets/images/group.png',
    'assets/images/leaves.png',
    'assets/images/cactus.png',
    'assets/images/basketball.png'
  ];

  static final Map<String, String> challenges = {
    'Complete 1000 word streak': 'Win 1000XP along with 300 diamonds.',
    'Lorem Ipsum ':
        'is simply dummy text of the printing and typesetting industry.',
  };

  const ChallengesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChallengeCard(
          imagePath: imagePaths[0],
          challengeName: challenges.keys.toList()[0],
          details: challenges.values.elementAt(0),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Achievements',
                style: TextStyle(fontSize: 30),
              )),
        ),
        ChallengeCard(
          imagePath: imagePaths[1],
          challengeName: challenges.keys.toList()[1],
          details: challenges.values.elementAt(1),
        ),
        const SizedBox(
          height: 20,
        ),
        ChallengeCard(
          imagePath: imagePaths[2],
          challengeName: challenges.keys.toList()[1],
          details: challenges.values.elementAt(1),
        ),
        ChallengeCard(
          imagePath: imagePaths[3],
          challengeName: challenges.keys.toList()[1],
          details: challenges.values.elementAt(1),
        ),
      ],
    );
  }
}
