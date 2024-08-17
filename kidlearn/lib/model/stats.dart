import '../constants/img_ext.dart';
import 'package:flutter/material.dart';

class Stats {
  String id;
  int streak;
  int xp;
  LeagueMedal medal;
  int top3finishes;

  Stats({
    required this.id,
    this.streak = 0,
    this.xp = 0,
    this.medal = LeagueMedal.bronze,
    this.top3finishes = 0,
  });

  AssetImage img() {
    switch (medal) {
      case LeagueMedal.bronze:
        return Img.bicycle;
      case LeagueMedal.silver:
        return Img.bicycle;
      case LeagueMedal.gold:
        return Img.bicycle;
    }
  }

  String medalName() =>
      '${medal.name[0].toUpperCase()}${medal.name.substring(1)}'.toString();
}

enum LeagueMedal { bronze, silver, gold }
