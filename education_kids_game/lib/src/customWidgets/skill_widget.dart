import 'package:education_kids_game/src/custom_icons_icons.dart';
import 'package:flutter/material.dart';

class SkillWidget extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String level;
  final double imgSize;
  const SkillWidget(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.level,
      required this.imgSize});

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        height: 140,
        width: 140,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            color: Color(0xffC4C4C4), shape: BoxShape.circle),
        child: Container(
          height: 120,
          width: 120,
          padding: EdgeInsets.all(imgSize),
          decoration: BoxDecoration(
              color: const Color(0xff72BFC7),
              shape: BoxShape.circle,
              border: Border.all(width: 6, color: Colors.white)),
          child: Image.asset(imgUrl),
        ),
      ),
      const Positioned(
          bottom: 25,
          right: 6,
          child: Icon(
            CustomIcons.crown,
            size: 27,
            color: Color(0xffECC055),
          )),
      Positioned(
          bottom: 25,
          right: 12,
          child: Text(
            level,
            style: const TextStyle(fontSize: 15),
          )),
      Positioned(
          top: 150,
          left: 50,
          child: Text(
            title,
            style: const TextStyle(fontSize: 20),
          ))
    ]);
  }
}
