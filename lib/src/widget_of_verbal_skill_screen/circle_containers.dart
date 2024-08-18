import 'package:flutter/material.dart';

class CircleContainers extends StatelessWidget {
  final String photoPath;
  const CircleContainers({super.key, required this.photoPath});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Container(
            height: 140,
            width: 140,
            padding: const EdgeInsets.all(35),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xffC4C4C4)),
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            height: 120,
            width: 120,
            padding: const EdgeInsets.all(45),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xfffbf5f2)),
          ),
        ),
        Positioned(
          top: 15,
          left: 15,
          child: Container(
            height: 110,
            width: 110,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff72BFC7),
            ),
            child: Center(
              child: Image.asset(
                photoPath,
                height: 100, 
                width: 100, 
                fit: BoxFit.none, 
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 90, left: 110),
          child: Image.asset('assets/home_screen_icons/crown.png'),
        ),
      ],
    );
  }
}
