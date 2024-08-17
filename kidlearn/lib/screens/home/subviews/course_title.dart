import 'package:flutter/material.dart';
import 'package:kidlearn/constants/roboto_text_style.dart';
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
            style: RobotoTextStyle.robotoRegular(size: 30),
          ),
          const Spacer(),
          Row(
            children: [
              AppSvg.crown,
              Text(
                '${course.crowns.toString()}/${course.totalCrowns.toString()}',
                style: RobotoTextStyle.robotoRegular(
                    size: 20, color: ThemeColors.textGrey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
