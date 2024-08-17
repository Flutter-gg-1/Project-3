import '../constants/img_ext.dart';
import '../model/achievement.dart';
import '../model/challenge.dart';
import '../model/chapter.dart';
import '../model/course.dart';
import '../model/stats.dart';
import '../model/unit.dart';
import '../model/user.dart';

class MockData {
  User? currentUser;

  List<Achievement> achievements = [];
  List<Challenge> challenges = [];
  List<Chapter> chapters = [];
  List<Course> courses = [];
  List<Stats> stats = [];
  List<Unit> units = [];
  List<User> users = [];

  static var shared = MockData();

  MockData() {
    _createData();
  }

  void _createData() {
    achievements = _createAchievements();
    challenges = _createChallenges();
    chapters = _createChapters();
    addRemainingChapters();
    units = _createUnits();
    courses = _creteCourses();
    stats = _createStats();
    users = _createUsers();
    _assignFollowers();

    currentUser = users.first;
  }

  // Challenge
  List<Achievement> _createAchievements() => [
        Achievement(
            id: 'C1',
            title: 'Lorem Ipsum',
            description:
                'is simply dummy text of the printing and typesetting industry.',
            img: Img.tree),
        Achievement(
            id: 'C1',
            title: 'Lorem Ipsum',
            description:
                'is simply dummy text of the printing and typesetting industry.',
            img: Img.cactus),
        Achievement(
            id: 'C1',
            title: 'Lorem Ipsum',
            description:
                'is simply dummy text of the printing and typesetting industry.',
            img: Img.basketBall),
      ];
  List<Challenge> _createChallenges() => [
        Challenge(
          id: 'Ch1',
          title: 'Complete 1000 word streak',
          description: 'Win 1000XP along with 300 diamonds',
          img: Img.reading,
          achievements: achievements,
        )
      ];
  // Chapter
  List<Chapter> _createChapters() => [
        Chapter(id: '1', name: 'Intro', completed: true, img: Img.pencil),
        Chapter(id: '2', name: 'Phrases', completed: true, img: Img.book),
        Chapter(id: '3', name: 'Travel', completed: true, img: Img.bicycle),
      ];
  void addRemainingChapters() {
    // Add remaining chapters with only an id
    for (int i = 4; i <= 40; i++) {
      chapters.add(Chapter(id: i.toString()));
    }
  }

  // Unit
  List<Unit> _createUnits() => [
        Unit(
            id: 'C1U1',
            unitNum: 1,
            chapters: chapters,
            completedChapters: 18,
            totalChapters: chapters.length),
        Unit(id: 'C1U2', unitNum: 2, chapters: chapters),
        Unit(
            id: 'C2U1',
            unitNum: 1,
            chapters: chapters,
            completedChapters: 35,
            totalChapters: chapters.length),
        Unit(id: 'C2U2', unitNum: 2, chapters: chapters),
        Unit(
            id: 'C3U1',
            unitNum: 1,
            chapters: chapters,
            completedChapters: 3,
            totalChapters: chapters.length),
        Unit(id: 'C3U2', unitNum: 2, chapters: chapters),
      ];
  // Course
  List<Course> _creteCourses() => [
        Course(
          id: 'C1',
          title: 'Logical reasoning',
          units: units.where((unit) => unit.id.contains('C1')).toList(),
        ),
        Course(
          id: 'C2',
          title: 'Artistic thinking',
          units: units.where((unit) => unit.id.contains('C2')).toList(),
        ),
        Course(
          id: 'C3',
          title: 'Verbal skills',
          units: units.where((unit) => unit.id.contains('C3')).toList(),
        ),
      ];
  // User
  List<Stats> _createStats() => [
        Stats(
          id: '1',
          streak: 3,
          xp: 1432,
          medal: LeagueMedal.bronze,
          top3finishes: 0,
        ),
        Stats(
          id: '2',
          streak: 12,
          xp: 3152,
          medal: LeagueMedal.gold,
          top3finishes: 10,
        ),
        Stats(
          id: '3',
          streak: 1,
          xp: 100,
          medal: LeagueMedal.bronze,
          top3finishes: 0,
        ),
      ];
  List<User> _createUsers() => [
        User(
          id: '1',
          name: 'Nidi Pandya',
          username: 'Nidhi12',
          avatar: Img.avatar,
          joinDate: DateTime(2022, 3),
          stats: stats.firstWhere((stat) => stat.id == '1'),
        ),
        User(
          id: '2',
          name: 'Hardi',
          username: 'Hardi55',
          joinDate: DateTime(2022, 4),
          stats: stats.firstWhere((stat) => stat.id == '2'),
        ),
        User(
          id: '3',
          name: 'Krishna',
          username: 'Krishna97',
          joinDate: DateTime(2023, 1),
          stats: stats.firstWhere((stat) => stat.id == '3'),
        )
      ];

  void _assignFollowers() {
    for (var user in users) {
      user.followers = users.where((e) => user.id != e.id).toList();
      user.following = users.where((e) => user.id != e.id).toList();
    }
  }
}
