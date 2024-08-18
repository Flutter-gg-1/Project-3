
import 'package:educational_kids_game/widget/profile.dart';
import 'package:educational_kids_game/widget/statistics_row.dart';
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
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                
              ],
            ),
          ),
        )
      ],
    );
  }
}
