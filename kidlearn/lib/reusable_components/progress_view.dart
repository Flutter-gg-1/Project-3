import 'package:flutter/material.dart';
import '../constants/color_ext.dart';

class ProgressView extends StatelessWidget {
  const ProgressView({super.key, required this.value, required this.total});

  final int value;
  final int total;

  double progressValue() => value / total;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 8, bottom: 2),
          child: LinearProgressIndicator(
            value: progressValue(),
            borderRadius: BorderRadius.circular(16),
            minHeight: 12,
            backgroundColor: ThemeColors.unitCardBorder,
            color: ThemeColors.crownYellow,
          ),
        ),
        const Row(
          children: [
            Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 3.0),
                  child: Icon(
                    Icons.square,
                    size: 20,
                    color: ThemeColors.courseCardBG,
                  ),
                ),
                Icon(
                  Icons.square,
                  size: 20,
                  color: ThemeColors.crownYellow,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
