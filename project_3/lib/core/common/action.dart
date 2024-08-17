import 'package:flutter/material.dart';

extension GoToAnotherPage on BuildContext {
  void goTo(Widget pageWidget) {
    Navigator.push(this, MaterialPageRoute(builder: (context) {
      return pageWidget;
    }));
  }
}
