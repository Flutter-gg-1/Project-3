import 'package:flutter/material.dart';

//this widget return statistics cards on profile screen
Widget statisticsCard({
  required leadingValue,
  required titleValue,
  required subtitleValue,
}) {
  return Expanded(
    child: SizedBox(
        width: 150,
        height: 75,
        child: Card(
          elevation: 0,
          color: const Color(0xffFBF5F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
            side: const BorderSide(
              color: Color.fromARGB(124, 196, 196, 196),
              width: 3,
            ),
          ),
          child: ListTile(
            leading: leadingValue,
            title: Text(
              titleValue,
              style: const TextStyle(fontSize: 18),
            ),
            subtitle: Text(
              subtitleValue,
              style: const TextStyle(
                fontSize: 12,
                color: Color.fromARGB(156, 0, 0, 0),
              ),
            ),
          ),
        )),
  );
}
