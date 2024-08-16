import 'package:flutter/material.dart';

import '../constants/color_ext.dart';

class ThemeProgressView extends StatelessWidget {
  const ThemeProgressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        LinearProgressIndicator(
          value: 0.5,
          borderRadius: BorderRadius.circular(16),
          minHeight: 12,
          backgroundColor: ThemeColors.unitCardBorder,
          color: ThemeColors.crownYellow,
        ),
        const Row(
          children: [
            Icon(
              Icons.person,
              color: ThemeColors.crownYellow,
              size: 28,
            ),
          ],
        )
      ],
    );
  }
}
