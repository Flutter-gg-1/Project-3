import 'package:flutter/material.dart';

import '../../reusable_components/theme_scaffold.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ThemeScaffold(
      hasHeader: true,
      headerContent: null,
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(8)),
        ],
      ),
    );
  }
}
