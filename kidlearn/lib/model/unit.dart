import 'package:flutter/material.dart';

class Unit {
  int unitNum;
  Image img;
  List<Chapter> chapters;
  int completedChapters;
  int totalChapters;
  bool isUnlocked = false;

  Unit({
    required this.unitNum,
    Image? img,
    required this.chapters,
    this.completedChapters = 0,
    this.totalChapters = 0,
  }) : img = Image.asset('horse.png');
}

class Chapter {
  String name;
  Image img;

  Chapter({
    this.name = '',
    Image? img,
  }) : img = Image.asset('lock.svg');
}
