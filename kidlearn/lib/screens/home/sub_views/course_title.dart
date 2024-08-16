import 'package:flutter/material.dart';

import '../../../constants/theme_colors.dart';
import '../../../model/course.dart';

class CourseTitle extends StatelessWidget {
  const CourseTitle({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, left: 24, right: 24),
      child: Row(
        children: [
          Text(
            course.title,
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
          ),
          const Spacer(),
          const Row(
            children: [
              Icon(
                Icons.lock,
              ),
              Text('18/40',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: ThemeColors.textGrey,
                  )),
            ],
          )
        ],
      ),
    );
  }
}
