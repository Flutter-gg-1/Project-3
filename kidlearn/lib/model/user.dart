import 'stats.dart';
import 'package:flutter/material.dart';

class User {
  String id;
  String name;
  String username;
  DateTime joinDate;
  AssetImage? avatar;
  List<User> following;
  List<User> followers;
  Stats stats;
  Color preferredColor;

  User({
    required this.id,
    required this.name,
    required this.username,
    this.avatar,
    required this.joinDate,
    List<User>? following,
    List<User>? followers,
    required this.stats,
    required this.preferredColor,
  })  : following = following ?? [],
        followers = followers ?? [];

  String initials() => name[0].toUpperCase();
}
