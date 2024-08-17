import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidlearn/constants/text_ext.dart';
import '../../../constants/color_ext.dart';
import '../../../constants/svg.dart';

class HomeHeaderView extends StatelessWidget {
  const HomeHeaderView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _HeaderStatsItem(
            icon: AppSvg.flame, iconColor: ThemeColors.orange, statNum: 2),
        _HeaderStatsItem(
            icon: AppSvg.xp,
            iconColor: ThemeColors.iconDarkGreen,
            statNum: 1432),
        _HeaderStatsItem(
            icon: AppSvg.heart, iconColor: ThemeColors.iconRed, statNum: 99),
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

  final SvgPicture icon;
  final Color iconColor;
  final int statNum;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(width: 4),
        Text(statNum == 99 ? '∞' : statNum.toString())
            .headerText(color: iconColor),
      ],
    );
  }
}
