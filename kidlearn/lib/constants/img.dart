import 'package:flutter/material.dart';

extension Img on Image {
  static Image logo = Image.asset('assets/logo.png', fit: BoxFit.contain);
  // Images
  static Image dino =
      Image.asset('assets/images/dinosaur.png', fit: BoxFit.contain);
  static Image horse =
      Image.asset('assets/images/horse.png', fit: BoxFit.fitHeight);
}
