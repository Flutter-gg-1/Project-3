import 'package:flutter/material.dart';

class VerbalSkillsAppBar extends StatelessWidget {
  const VerbalSkillsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: const Color(0xffE5E5E5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text(
            "Verbal skills",
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Row(
            children: [
              Image.asset('lib/assets/home/crown.png'),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "3",
                style: TextStyle(fontSize: 25, color: Color(0xffECC055)),
              )
            ],
          ),
          Row(
            children: [
              Image.asset('lib/assets/verbal_skills/diamond.png'),
              const SizedBox(
                width: 15,
              ),
              const Text(
                "213",
                style: TextStyle(fontSize: 25, color: Color(0xff02A1FB)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
