
import 'package:flutter/material.dart';

class Challenges extends StatelessWidget {
  final String title,subtitle,imagePath;
  const Challenges({
    super.key, required this.title, required this.subtitle, required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 31),
      width: 378,
      height: 116,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black38,width: 2)
      ),
      child: ListTile(
        title: Text(title,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
        subtitle: Text(subtitle,style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w400)),
        leading: Image.asset(imagePath,width: 116,height: 104),
      ),
    );
  }
}
