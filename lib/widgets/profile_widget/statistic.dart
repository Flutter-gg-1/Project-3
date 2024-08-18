import 'package:flutter/material.dart';

class Statistic extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;
  const Statistic(
      {super.key,
      required this.icon,
      required this.subtitle,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border:
              Border.all(width: 3, color: const Color.fromRGBO(0, 0, 0, 0.1))),
      width: 179,
      height: 61,
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Image.asset(icon)],
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
                style: const TextStyle(fontSize: 20),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                    fontSize: 15, color: Color.fromRGBO(0, 0, 0, 0.4)),
              )
            ],
          )
        ],
      ),
    );
  }
}