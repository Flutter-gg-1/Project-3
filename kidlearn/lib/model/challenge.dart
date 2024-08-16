import 'achievement.dart';
import 'package:flutter/material.dart';

class Challenge {
  String id;
  String title;
  String description;
  Image img;
  List<Achievement> achievements;

  Challenge({
    required this.id,
    this.title = '',
    required this.description,
    required this.img,
    List<Achievement>? achievements,
  }) : achievements = achievements ?? [];
}
