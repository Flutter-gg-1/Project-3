import 'package:flutter/material.dart';

class StatisticsCard extends StatelessWidget {
  final String imagePath;
  final String label;
  final String points;
  final bool isMedal;
  const StatisticsCard(
      {super.key,
      required this.imagePath,
      required this.label,
      required this.points,
      this.isMedal = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 10),
      height: 61,
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border:
              Border.all(color: const Color.fromRGBO(0, 0, 0, 0.1), width: 3)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            height: isMedal ? 35 : 29,
            width: isMedal ? 35 : 26,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                points,
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                label,
                style: const TextStyle(
                    fontSize: 15,
                    color: Color.fromRGBO(0, 0, 0, 0.4),
                    height: 0.5),
              ),
            ],
          )
        ],
      ),
    );
  }
}
