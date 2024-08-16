import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kidlearn/mock_data/mock_data.dart';
import 'package:kidlearn/reusable_components/theme_scaffold.dart';
import 'package:kidlearn/screens/home/sub_views/header_content_view.dart';
import '../../constants/theme_colors.dart';
import '../../model/unit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeScaffold(
      hasHeader: true,
      headerContent: const HeaderContentView(),
      body: Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
                children: MockData.shared.courses
                    .map(
                      (course) => Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                course.title,
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 24),
                              ),
                              const Spacer(),
                              const Icon(Icons.lock)
                            ],
                          ),
                          Row(
                            children: course.units.map((unit) {
                              return Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: UnitCard(unit: unit),
                                ),
                              );
                            }).toList(),
                          )
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

class UnitCard extends StatelessWidget {
  const UnitCard({super.key, required this.unit});

  final Unit unit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            'Unit ${unit.unitNum}',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          if (!unit.isUnlocked)
            Icon(Icons.lock, size: 70, color: ThemeColors.lockGrey),
          // ProgressBar
        ],
      ),
    );
  }
}
