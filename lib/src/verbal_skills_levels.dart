// custom_widget.dart

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

Widget verbalSkillsLevels({
  required logo,
  String? text,
  String? title,
}) {
  return Column(
    children: [
      Stack(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            width: 130,
            height: 130,
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xffD3D3D3), width: 10),
              shape: BoxShape.circle,
            ),
            child: Container(
              margin: const EdgeInsets.all(5),
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                color: Color(0xff72BFC7),
                shape: BoxShape.circle,
              ),
              child: logo,
            ),
          ),
          const Positioned(
              right: 10,
              bottom: 15,
              child: Icon(
                FluentIcons.crown_20_filled,
                size: 40,
                color: Color(0xffECC055),
              )),
          if (text != null)
            Positioned(
                right: 26,
                bottom: 20,
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 18),
                )),
        ],
      ),
      if (title != null)
        Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
    ],
  );
}
