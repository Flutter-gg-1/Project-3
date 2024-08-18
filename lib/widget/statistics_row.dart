import 'package:flutter/material.dart';

class StatisticsRow extends StatelessWidget {
  final String title, subtitle, iconAsText;
  const StatisticsRow({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconAsText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 65,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black38)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            iconAsText,
            style: const TextStyle(fontSize: 30),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ],
          )
        ],
      ),
    );
  }
}
