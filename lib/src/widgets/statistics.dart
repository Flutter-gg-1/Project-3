import 'package:flutter/material.dart';
import 'package:p_1_kids_game/src/theme/my_color.dart';

class Statistics extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;

  const Statistics(
      {super.key,
      required this.icon,
      required this.subtitle,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(width: 2, color: MyColor.black10)),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  icon,
                  width: 25,
                )
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 18),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 15, color: MyColor.black40),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
