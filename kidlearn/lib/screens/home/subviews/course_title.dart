import 'package:flutter/material.dart';
import '../../../constants/color_ext.dart';
import '../../../constants/svg.dart';
import '../../../model/course.dart';

class CourseTitle extends StatelessWidget {
  const CourseTitle({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
      child: Row(
        children: [
          Text(
            course.title,
            textAlign: TextAlign.start,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
          ),
          const Spacer(),
          Row(
            children: [
              Svg.crown,
              Text(
                  '${course.crowns.toString()}/${course.totalCrowns.toString()}',
                  style: const TextStyle(
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
