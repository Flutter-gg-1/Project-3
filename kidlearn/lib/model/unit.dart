import 'package:flutter/material.dart';
import 'chapter.dart';

class Unit {
  String id;
  int unitNum;
  AssetImage img;
  List<Chapter> chapters;
  int completedChapters;
  int totalChapters;
  bool isUnlocked = false;

  Unit({
    required this.id,
    required this.unitNum,
    Image? img,
    required this.chapters,
    this.completedChapters = 0,
    this.totalChapters = 0,
  }) : img = const AssetImage('horse.png');
}
