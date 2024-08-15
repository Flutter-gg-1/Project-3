import 'unit.dart';

class Course {
  String title;
  List<Unit> units;

  Course({
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
