import 'stats.dart';
import 'package:flutter/material.dart';

class User {
  String id;
  String name;
  String username;
  DateTime joinDate;
  Image? avatar;
  List<User> following;
  List<User> followers;
  Stats stats;

  User({
    required this.id,
    required this.name,
    required this.username,
    this.avatar,
    required this.joinDate,
    List<User>? following,
    List<User>? followers,
    required this.stats,
  })  : following = following ?? [],
        followers = followers ?? [];
}
