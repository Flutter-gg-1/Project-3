import 'package:flutter/material.dart';

class HourseBox extends StatelessWidget {
  const HourseBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 150,
          width: 200,
          decoration: BoxDecoration(
              color: const Color(0xffE9E8E8),
              borderRadius: BorderRadius.circular(20),
              border: Border.all()),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text("Unit 1"),
              Image.asset("lib/assets/verbal_skills/bar.png"),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        ),
        Positioned(
            top: -50,
            right: 40,
            child: Image.asset("lib/assets/verbal_skills/Beep Beep Horse.png"))
      ],
    );
  }
}
