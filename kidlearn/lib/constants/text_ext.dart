import 'package:flutter/material.dart';
import 'package:kidlearn/constants/roboto_text_style.dart';

extension CustomText on Text {
  Text headerText({Color color = Colors.black}) {
    return Text(
      data!,
      maxLines: 1,
      overflow: TextOverflow.clip,
      style: RobotoTextStyle.robotoRegular(size: 25, color: color),
    );
  }
}
