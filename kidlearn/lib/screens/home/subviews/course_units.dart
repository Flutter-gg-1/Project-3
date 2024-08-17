import 'package:flutter/material.dart';
import '../../../constants/color_ext.dart';
import '../../../model/course.dart';
import '../../../model/unit.dart';
import '../../../reusable_components/theme_progress_view.dart';
import '../course_unit/course_unit_screen.dart';

class CourseUnits extends StatelessWidget {
  const CourseUnits({super.key, required this.course});

  final Course course;

  void _navigateToCourseUnit({
    required BuildContext context,
    required Course course,
    required Unit unit,
  }) {
    if (unit.isUnlocked) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => CourseUnitScreen(course: course, unit: unit),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: course.units.map<Widget>((unit) {
          return Expanded(
            flex: 1,
            child: InkWell(
              onTap: () => _navigateToCourseUnit(
                context: context,
                course: course,
                unit: unit,
              ),
              child: _UnitCard(unit: unit),
            ),
          );
        }).toList(),
      ),
    );
  }
}

class _UnitCard extends StatelessWidget {
  const _UnitCard({required this.unit});

  final Unit unit;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.8,
      child: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Container(
            color: ThemeColors.headerBG,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // MARK: - Unit Num
                  if (unit.isUnlocked)
                    Text(
                      'Unit ${unit.unitNum}',
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  const Spacer(),
                  // MARK: - Lock Icon
                  if (!unit.isUnlocked)
                    const Icon(Icons.lock,
                        size: 70, color: ThemeColors.lockGrey),
                  const Spacer(),
                  // MARK: - ProgressBar
                  if (unit.isUnlocked)
                    ProgressView(
                        value: unit.completedChapters,
                        total: unit.totalChapters)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
