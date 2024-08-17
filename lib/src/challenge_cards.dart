import 'package:flutter/material.dart';

// This widget is used for cards in the challenge screen
Widget challengeCadrs({
  required String imagePath,
  required Widget title,
  required Widget subtitle,
}) {
  return Card(
    margin: const EdgeInsets.only(left:30, right: 30, top: 30),
    elevation: 0,
    color: const Color(0xffFBF5F2),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
      side: const BorderSide(
        color: Color.fromARGB(124, 196, 196, 196),
        width: 3.0,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 5, left: 5),
      child: Row(
        children: [
          SizedBox(
            width: 100,
            height: 110,
            child: Image.asset(
              imagePath,
              
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: [
                title,
                const SizedBox(height: 5),
                subtitle,
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
