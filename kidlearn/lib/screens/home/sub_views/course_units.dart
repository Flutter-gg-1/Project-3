import 'package:flutter/material.dart';
import '../../../constants/theme_colors.dart';
import '../../../model/course.dart';
import '../../../model/unit.dart';

class CourseUnits extends StatelessWidget {
  const CourseUnits({super.key, required this.course});

  final Course course;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: course.units.map((unit) {
          return Expanded(
            flex: 1,
            child: _UnitCard(unit: unit),
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
        padding: const EdgeInsets.all(12),
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
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        LinearProgressIndicator(
                          value: 0.5,
                          borderRadius: BorderRadius.circular(16),
                          minHeight: 12,
                          backgroundColor: ThemeColors.unitCardBorder,
                          color: ThemeColors.crownYellow,
                        ),
                        const Row(
                          children: [
                            Icon(Icons.person, color: ThemeColors.crownYellow),
                          ],
                        )
                      ],
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
