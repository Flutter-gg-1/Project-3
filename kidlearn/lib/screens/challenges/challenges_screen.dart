import 'package:flutter/material.dart';
import 'package:kidlearn/constants/roboto_text_style.dart';
import 'package:kidlearn/constants/text_ext.dart';
import '../../constants/img_ext.dart';
import '../../model/challenge.dart';
import '../../reusable_components/theme_scaffold.dart';
import 'challenge_card.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key, required this.challenge});

  final Challenge challenge;

  @override
  Widget build(BuildContext context) {
    return ThemeScaffold(
      hasHeader: true,
      headerContent: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Challenges').headerText(),
        ],
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              children: [
                ChallengeCard(
                  assetImage: challenge.img,
                  title: challenge.title,
                  description: challenge.description,
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Achievements',
                        style: RobotoTextStyle.robotoRegular(size: 25)),
                  ),
                ),
                ...challenge.achievements.map((achievement) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: ChallengeCard(
                      assetImage: achievement.img,
                      title: achievement.title,
                      description: achievement.description,
                    ),
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
