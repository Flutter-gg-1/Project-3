import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidlearn/constants/text_ext.dart';
import '../../../../constants/color_ext.dart';
import '../../../../constants/svg.dart';

class CourseContentHeaderView extends StatelessWidget {
  const CourseContentHeaderView({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title).headerText(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              _HeaderStatsItem(
                  icon: AppSvg.crown,
                  iconColor: ThemeColors.crownYellow,
                  statNum: 3),
              _HeaderStatsItem(
                  icon: AppSvg.diamond,
                  iconColor: ThemeColors.blue,
                  statNum: 213),
            ],
          ),
        ),
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
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          icon,
          const SizedBox(width: 4),
          Text(statNum.toString()).headerText(color: iconColor),
        ],
      ),
    );
  }
}
