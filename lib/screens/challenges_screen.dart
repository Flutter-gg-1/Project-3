import 'package:education_app/widgets/challenges_section.dart';
import 'package:education_app/widgets/home/bottom_navigation.dart';
import 'package:flutter/material.dart';

import '../widgets/topic/topic_header.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromRGBO(251, 245, 242, 1),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 70),
            child: TopicHeader(
              pageName: 'Challenges',
              isTopicPage: false,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [ChallengesSection()],
            ),
          )
        ],
      ),
      bottomSheet: BottomNavigation(active: 2),
    );
  }
}
