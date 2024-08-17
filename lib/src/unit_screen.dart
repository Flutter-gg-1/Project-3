import 'package:educational_kids_game/widget/costom_section.dart';
import 'package:educational_kids_game/widget/section_unit.dart';
import 'package:educational_kids_game/widget/unit_topic_circle.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class UnitScreen extends StatelessWidget {
  const UnitScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFBF5F2),
      ),
      body: Column(
        children: [
          Container(
            color: const Color(0xFFE5E5E5).withOpacity(0.8),
            width: double.infinity,
            height: 45,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Verbal skills',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  width: 45,
                ),
                Icon(
                  AntDesign.crown_fill,
                  color: Colors.amber,
                  size: 30,
                ),
                Text(
                  '3',
                  style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  width: 45,
                ),
                Icon(
                  Iconsax.diamonds_bold,
                  color: Colors.blue,
                  size: 30,
                ),
                Text(
                  '213',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 670,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  SectionUnit(
                    progress: 3 / 40,
                  ),
                  SizedBox(
                    height: 74,
                  ),
                  UnitTopicCircle(
                    imagePath: 'lib/assest/image/pen.png',
                    isClose: false,
                    lable: 'Intro',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      UnitTopicCircle(
                        imagePath: 'lib/assest/image/book.png',
                        isClose: false,
                        lable: 'Phrases',
                      ),
                      UnitTopicCircle(
                        imagePath: 'lib/assest/image/bike.png',
                        isClose: false,
                        lable: 'Travel',
                      ),
                    ],
                  ),
                  UnitTopicCircle(
                    imagePath: 'lib/assest/image/lock.png',
                    isClose: true,
                    lable: '',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                  UnitTopicCircle(
                    imagePath: 'lib/assest/image/lock.png',
                    isClose: true,
                    lable: '',
                  ),
                  UnitTopicCircle(
                    imagePath: 'lib/assest/image/lock.png',
                    isClose: true,
                    lable: '',
                  ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
