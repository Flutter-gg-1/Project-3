import 'package:flutter/material.dart';

extension GoToAnotherPage on BuildContext {
  void goTo(Widget pageWidget) {
    Navigator.push(this, MaterialPageRoute(builder: (context) {
      return pageWidget;
    }));
  }
}

showOverlay(BuildContext context) {
  OverlayState? overlayState = Overlay.of(context);
  OverlayEntry overlayEntry = OverlayEntry(builder: (context) {
    return const Text('Abu_Mukhlef');
  });

  overlayState.insert(overlayEntry);
}
