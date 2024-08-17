import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  static final List<String> imagePaths = [
    'assets/images/fire.png',
    'assets/images/xp.png',
    'assets/images/heart.png'
  ];
  static final List<Color> colors = [
    const Color.fromRGBO(235, 159, 74, 1),
    const Color.fromRGBO(51, 143, 155, 1),
    const Color.fromRGBO(220, 63, 0, 1)
  ];
  final List<String> points;

  const HomeHeader({super.key, required this.points});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 21, horizontal: 47),
      height: 71,
      width: 428,
      color: const Color.fromRGBO(196, 196, 196, 0.4),
      child: Row(
        children: [
          Image.asset(
            imagePaths[0],
            height: 40,
            width: 40,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            points[0],
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: colors[0]),
          ),
          const SizedBox(
            width: 35,
          ),
          Image.asset(
            imagePaths[1],
            height: 40,
            width: 40,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            points[1],
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: colors[1]),
          ),
          const SizedBox(
            width: 35,
          ),
          Image.asset(
            imagePaths[2],
            height: 40,
            width: 40,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            points[2],
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w500, color: colors[2]),
          ),
        ],
      ),
    );
  }
}
