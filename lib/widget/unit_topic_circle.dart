import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class UnitTopicCircle extends StatelessWidget {
  final String imagePath;
  final String lable;
  final bool isClose;
  const UnitTopicCircle({
    super.key,
    required this.imagePath,
    required this.isClose,
    required this.lable,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: const Alignment(1, 0.5),
          children: [
            Container(
                height: 140,
                width: 140,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Color(0xFFc4c4c4), shape: BoxShape.circle),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: CircleAvatar(
                    backgroundColor: const Color(0xFF8cbcc6),
                    child: Image.asset(
                      imagePath,
                      width: 77,
                      height: 42,
                    ),
                  ),
                )),
            const Icon(
              AntDesign.crown_fill,
              color: Colors.amber,
              size: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: Text(
                isClose == false ? '1' : '',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
        Text(
          lable,
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
        )
      ],
    );
  }
}
