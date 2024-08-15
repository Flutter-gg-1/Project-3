import 'stats.dart';

class User {
  int id;
  String name;
  String username;
  DateTime joinDate;
  List<User> following;
  List<User> followers;
  Stats stats;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.joinDate,
    List<User>? following,
    List<User>? followers,
    required this.stats,
  })  : following = following ?? [],
        followers = followers ?? [];
}
