import 'package:flutter/material.dart';
import '../constants/img_ext.dart';

class Chapter {
  String id;
  String name;
  bool completed;
  AssetImage img;

  Chapter({
    required this.id,
    this.name = '',
    this.completed = false,
    AssetImage? img,
  }) : img = img ?? Img.lock;
}
