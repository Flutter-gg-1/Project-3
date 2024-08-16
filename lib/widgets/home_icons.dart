import 'package:flutter/material.dart';

class HomeIcons extends StatelessWidget {
  final String imagePath;
  final String text;
  final Color color;

  const HomeIcons({super.key, required this.imagePath, required this.text,required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imagePath,
          height: 40,
          width: 40,
        ),
        SizedBox(width: 5,),
        Text(
          text,
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500, color: color),
        )
      ],
    );
  }
}
