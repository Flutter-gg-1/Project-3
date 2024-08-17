import 'package:flutter/material.dart';
import 'package:multi_border/multi_border.dart';

class Skill extends StatelessWidget {
  final String assetImage;
  final double? imageHeight;
  final double? imageWidth;
  final String? skillName;
  final int? level;
  const Skill({super.key,required this.assetImage, this.level, this.skillName, this.imageHeight, this.imageWidth});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.centerRight,
          children: [
            Container(
            alignment: Alignment.center,
              width: 110,
              height: 110,
              decoration: MultiBorderDecoration(
                  color: const Color(0xff72BFC7),
                  boxShape: BoxShape.circle,
                  borderSides: const [
                    BorderSide(color: Color(0xffFBF5F2), width: 3),
                    BorderSide(color: Color(0xffc4c4c4), width: 10),
                  ]),
              child: Image.asset(assetImage,width: imageWidth, height: imageHeight,)),
        Padding(
          padding: const EdgeInsets.only(top:50),
          child: Stack(alignment: Alignment.bottomCenter,children: [Image.asset('assets/images/crown.png', height: 27,width: 31), Text(level?.toString() ?? "", style: TextStyle(fontSize: 15),)]),
        )
      ]),
            Text(skillName ?? "", style: const TextStyle(fontSize: 20),)
      ],
    );
  }
}