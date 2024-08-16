import 'package:flutter/material.dart';
import 'package:kidlearn/screens/course_unit/subviews/unit_card_view.dart';
import 'package:kidlearn/screens/course_unit/subviews/unit_chapters_view.dart';
import '../../model/unit.dart';
import '../../screens/course_unit/subviews/course_content_header_view.dart';
import '../../model/course.dart';
import '../../reusable_components/theme_scaffold.dart';

class CourseUnitScreen extends StatelessWidget {
  const CourseUnitScreen({super.key, required this.course, required this.unit});

  final Course course;
  final Unit unit;

  void _popView(BuildContext context) => Navigator.of(context).pop();

  @override
  Widget build(BuildContext context) {
    return ThemeScaffold(
      hasHeader: true,
      headerContent: InkWell(
        onTap: () => _popView(context),
        child: CourseContentHeaderView(title: course.title),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                UnitCardView(unitNum: unit.unitNum),
                UnitChaptersView(unit: unit),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
