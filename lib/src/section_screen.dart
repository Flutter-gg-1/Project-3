
import 'package:educational_kids_game/src/soon_screen.dart';
import 'package:educational_kids_game/src/unit_screen.dart';
import 'package:educational_kids_game/widget/costom_section.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class SectionScreen extends StatelessWidget {
  const SectionScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color(0xFFE5E5E5).withOpacity(0.8),
          width: double.infinity,
          height: 45,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                LineAwesome.fire_solid,
                color: Colors.orange,
                size: 30,
              ),
              Text(
                '3',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 45,
              ),
              Icon(
                LineAwesome.toolbox_solid,
                color: Color.fromARGB(255, 17, 152, 167),
                size: 30,
              ),
              Text(
                '1432 XP',
                style: TextStyle(
                    color: Color.fromARGB(255, 17, 152, 167),
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
              SizedBox(
                width: 45,
              ),
              Icon(
                LineAwesome.heart_solid,
                color: Colors.red,
                size: 30,
              ),
              Icon(
                LineAwesome.infinity_solid,
                color: Colors.red,
                size: 30,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 670,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 53,),
                SectionOptions(title: 'Logical reasoning',currentSteps: '18',progress: 18/40,nextScreen: SoonScreen(),),
                SizedBox(height: 35,),
                SectionOptions(title: 'Artistic thinking',currentSteps: '35',progress: 35/40,nextScreen: SoonScreen(),),
                SizedBox(height: 35,),
                SectionOptions(title: 'Verbal skills      ',currentSteps: '3',progress: 3/40,nextScreen: UnitScreen(),),
              ],
            ),
          ),
        )
      ],
    );
  }
}
