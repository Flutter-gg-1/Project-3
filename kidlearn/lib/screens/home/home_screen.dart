import 'package:flutter/material.dart';
import 'package:kidlearn/mock_data/mock_data.dart';
import 'package:kidlearn/reusable_components/theme_scaffold.dart';
import 'package:kidlearn/screens/home/sub_views/course_title.dart';
import 'package:kidlearn/screens/home/sub_views/course_units.dart';
import 'package:kidlearn/screens/home/sub_views/header_content_view.dart';

import '../course_unit/course_unit_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _navigateToCourseUnit(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const CourseUnitScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ThemeScaffold(
      hasHeader: true,
      headerContent: const HeaderContentView(),
      body: Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                children: MockData.shared.courses
                    .map(
                      (course) => Column(
                        children: [
                          // MARK: - Title
                          CourseTitle(course: course),
                          // MARK: Clickable Unit Cards
                          InkWell(
                            onTap: () => _navigateToCourseUnit(context),
                            child: CourseUnits(course: course),
                          ),
                        ],
                      ),
                    )
                    .toList()),
          ),
        ),
      ),
    );
  }
}
