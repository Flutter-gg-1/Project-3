import 'package:flutter/material.dart';

class Chapter {
  String id;
  String name;
  Image img;

  Chapter({
    required this.id,
    this.name = '',
    Image? img,
  }) : img = Image.asset('lock.svg');
}
