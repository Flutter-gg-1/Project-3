import 'package:education_kids_game/src/customWidgets/custom_icons_icons.dart';
import 'package:flutter/material.dart';

class CourseTitle extends StatelessWidget {
  final String title;
  final String rate;
  final double space;

  const CourseTitle(
      {super.key,
      required this.title,
      required this.rate,
      required this.space});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 30),
        Text(
          title,
          style: const TextStyle(fontSize: 35),
        ),
        SizedBox(width: space),
        const Icon(CustomIcons.crown, color: Color(0xffECC055)),
        Text(
          rate,
          textAlign: TextAlign.end,
          style: const TextStyle(
              fontSize: 20, fontFamily: "fonts/Roboto-Regular.ttf"),
        ),
        const SizedBox(width: 10)
      ],
    );
  }
}
