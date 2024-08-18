import 'package:flutter/material.dart';

class Progressbar extends StatelessWidget {

   final double percentage;
   const Progressbar({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: LinearProgressIndicator(
                minHeight: 10,
                value: percentage,
                color: const Color.fromARGB(255, 236, 193, 85),
                backgroundColor: const Color.fromARGB(255, 196, 196, 196),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -2,
          left: -3,
          child: Image.asset("assets/images/crown_strock.png"),
        ),
      ],
    );
  }
}