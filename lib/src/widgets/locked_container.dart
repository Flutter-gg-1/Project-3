import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

//this widget is used for Locked container in home screen
Widget lockedContainer() {
  return Container(
      height: 220,
      width: 180,
      decoration: BoxDecoration(
        color: const Color.fromARGB(124, 196, 196, 196),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Icon(
        FluentIcons.lock_closed_32_filled,
        size: 70,
        color: Color.fromRGBO(0, 0, 0, 0.5),
      ));
}
