import 'package:flutter/material.dart';

extension CustomText on Text {
  Text headerText({Color color = Colors.black}) {
    return Text(
      data!,
      maxLines: 1,
      overflow: TextOverflow.clip,
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400, color: color),
    );
  }
}
