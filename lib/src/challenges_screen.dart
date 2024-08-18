import 'package:educational_kids_game/widget/challenges.dart';
import 'package:flutter/material.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            color: const Color(0xFFE5E5E5).withOpacity(0.8),
            width: double.infinity,
            height: 60,
            child: const Center(
              child: Text(
                'Challenges',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
            )),
        const Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Challenges(
                  title: 'Complete 1000 word streak',
                  subtitle: 'Win 1000XP along with 300 diamonds.',
                  imagePath: 'lib/assest/image/women.png',
                ),
                SizedBox(height: 31,),
                Align(
                  alignment: Alignment(-0.8, 0),
                    child: Text(
                  'Achievements',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                )),
                Challenges(
                  title: 'Lorem Ipsum',
                  subtitle:
                      'is simply dummy text of the printing and typesetting industry.',
                  imagePath: 'lib/assest/image/leaf.png',
                ),
                Challenges(
                  title: 'Lorem Ipsum',
                  subtitle:
                      'is simply dummy text of the printing and typesetting industry.',
                  imagePath: 'lib/assest/image/sabbar.png',
                ),
                Challenges(
                  title: 'Lorem Ipsum',
                  subtitle:
                      'is simply dummy text of the printing and typesetting industry.',
                  imagePath: 'lib/assest/image/ball.png',
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
