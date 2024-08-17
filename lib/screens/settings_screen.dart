import 'package:education_app/widgets/topic/topic_header.dart';
import 'package:flutter/material.dart';

import '../widgets/home/bottom_navigation.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 70),
        child: TopicHeader(
          pageName: 'Settings',
          isTopicPage: false,
        ),
      ),
      bottomSheet: BottomNavigation(active: 4),
    );
  }
}
