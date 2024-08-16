import 'package:flutter/material.dart';
import 'package:kidlearn/mock_data/mock_data.dart';
import 'package:kidlearn/reusable_components/theme_scaffold.dart';
import 'package:kidlearn/screens/home/subviews/course_title.dart';
import 'package:kidlearn/screens/home/subviews/course_units.dart';
import 'package:kidlearn/screens/home/subviews/home_header_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeScaffold(
      hasHeader: true,
      headerContent: const HomeHeaderView(),
      body: Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8, top: 24),
            child: Column(
                children: MockData.shared.courses
                    .map(
                      (course) => Column(
                        children: [
                          // MARK: - Title
                          CourseTitle(course: course),
                          // MARK: Clickable Unit Cards
                          CourseUnits(course: course)
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
