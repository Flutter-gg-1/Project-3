import 'package:flutter/material.dart';

extension RobotoTextStyle on TextStyle {
  static TextStyle robotoRegular({
    double size = 20.0,
    Color color = Colors.black,
  }) {
    return TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w400,
      fontSize: size,
      color: color,
    );
  }

  static TextStyle robotoMedium({
    double size = 20.0,
    Color color = Colors.black,
  }) {
    return TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w500,
      fontSize: size,
      color: color,
    );
  }

  static TextStyle robotoBold({
    double size = 20.0,
    Color color = Colors.black,
  }) {
    return TextStyle(
      fontFamily: 'Roboto',
      fontWeight: FontWeight.w700,
      fontSize: size,
      color: color,
    );
  }
}
