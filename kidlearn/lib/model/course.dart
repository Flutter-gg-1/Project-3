import 'unit.dart';

class Course {
  String id;
  String title;
  List<Unit> units;
  int crowns;
  int totalCrowns;

  Course({
    required this.id,
    this.title = '',
    required this.units,
    this.crowns = 0,
    this.totalCrowns = 0,
  }) {
    _checkCompletedUnits();
    _calculateCrowns();
  }

  void _checkCompletedUnits() {
    for (var unit in units) {
      unit.isUnlocked = true;
      if (unit.completedChapters != unit.totalChapters) {
        break;
      }
    }
  }

  void _calculateCrowns() {
    var finished = 0;
    var total = 0;
    for (var unit in units) {
      finished += unit.completedChapters;
      total += unit.totalChapters;
    }
    crowns = finished;
    totalCrowns = total;
  }
}
