import 'unit.dart';

class Course {
  String id;
  String title;
  List<Unit> units;
  int? crowns;
  int? totalCrowns;

  Course({
    required this.id,
    this.title = '',
    required this.units,
  }) {
    _checkCompletedUnits();
  }

  void _checkCompletedUnits() {
    for (var unit in units) {
      unit.isUnlocked = true;
      if (unit.completedChapters != unit.totalChapters) {
        break;
      }
    }
  }
}
