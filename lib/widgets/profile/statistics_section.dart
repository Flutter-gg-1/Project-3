import 'package:flutter/material.dart';
import 'statistics_card.dart';

class StatisticsSection extends StatelessWidget {
  static final List<String> imagePaths = [
    'assets/images/fire.png',
    'assets/images/energy.png',
    'assets/images/bronze.png',
    'assets/images/medal.png'
  ];

  static final List<String> labels = [
    'Day Streak',
    'Total XP',
    'Current Leauge',
    'Top 3 Finishes'
  ];
  const StatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Statistics',
              style: TextStyle(fontSize: 30),
            )),
        Column(
          children: [
            Row(
              children: [
                StatisticsCard(
                    imagePath: imagePaths[0], label: labels[0], points: '3'),
                const SizedBox(
                  width: 20,
                ),
                StatisticsCard(
                    imagePath: imagePaths[1], label: labels[1], points: '1432'),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                StatisticsCard(
                  imagePath: imagePaths[2],
                  label: labels[2],
                  points: 'Bronze',
                  isMedal: true,
                ),
                const SizedBox(
                  width: 20,
                ),
                StatisticsCard(
                  imagePath: imagePaths[3],
                  label: labels[3],
                  points: '0',
                  isMedal: true,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
