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
        Image.asset(
          "assets/icons/crown_icon.png",
        ),
        Text(
          rate,
          textAlign: TextAlign.end,
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(width: 10)
      ],
    );
  }
}
