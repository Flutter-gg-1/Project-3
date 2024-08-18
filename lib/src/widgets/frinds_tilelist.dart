import 'package:flutter/material.dart';

//this widget is used for frinds list tile container in profile screen
Widget frindszTileList(
    {required titalValue,
    required subtitleValue,
    required letter,
    required colorValue}) {
  return ListTile(
    leading: Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colorValue,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 14),
        child: Text(
                letter,
                style: const TextStyle(fontSize: 15, color: Colors.white),
              ),
      ),
    ),
    title: Text(titalValue,
        style: const TextStyle(fontSize: 20, color: Colors.black)),
    subtitle: Text(subtitleValue,
        style:
            const TextStyle(fontSize: 15, color: Color.fromRGBO(0, 0, 0, 0.5))),
    trailing: const Icon(
      Icons.arrow_forward_ios,
      color: Color.fromRGBO(0, 0, 0, 0.3),
    ),
  );
}
