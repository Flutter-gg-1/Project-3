import 'package:flutter/material.dart';

// This widget is used for cards in the challenge screen
Widget challengeCadrs({
  required String imagePath,
  required Widget title,
  required Widget subtitle,
}) {
  return Card(
    margin: const EdgeInsets.only(left: 30, right: 30, top: 25),
    elevation: 0,
    color: const Color(0xffFBF5F2),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
      side: const BorderSide(
        color: Color.fromARGB(124, 196, 196, 196),
        width: 3.0,
      ),
    ),
    child: Column(
      children: [
        ListTile(
            leading: SizedBox(
              width: 100,
              height: 100,
              child: FittedBox(
                fit: BoxFit.none,
                child: Image.asset(imagePath),
              ),
            ),
            title: title,
            subtitle: subtitle)
      ],
    ),
  );
}
