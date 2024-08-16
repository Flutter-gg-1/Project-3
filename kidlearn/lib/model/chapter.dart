import 'package:flutter/material.dart';

class Chapter {
  String id;
  String name;
  AssetImage img;

  Chapter({
    required this.id,
    this.name = '',
    AssetImage? img,
  }) : img = img ?? const AssetImage('assets/icons/lock.svg');
}
