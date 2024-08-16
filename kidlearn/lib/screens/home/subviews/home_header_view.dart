import 'package:flutter/material.dart';
import 'package:kidlearn/constants/text_ext.dart';
import '../../../constants/color_ext.dart';

class HomeHeaderView extends StatelessWidget {
  const HomeHeaderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _HeaderStatsItem(
            icon: Icons.heart_broken,
            iconColor: ThemeColors.orange,
            statNum: 2),
        _HeaderStatsItem(
            icon: Icons.heart_broken,
            iconColor: ThemeColors.iconDarkGreen,
            statNum: 1432),
        _HeaderStatsItem(
            icon: Icons.heart_broken,
            iconColor: ThemeColors.iconRed,
            statNum: 2),
      ],
    );
  }
}

class _HeaderStatsItem extends StatelessWidget {
  const _HeaderStatsItem({
    required this.icon,
    required this.iconColor,
    required this.statNum,
  });

  final IconData icon;
  final Color iconColor;
  final int statNum;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 28,
          color: iconColor,
        ),
        const SizedBox(width: 4),
        Text(statNum.toString()).headerText(color: iconColor),
      ],
    );
  }
}
