import 'package:flutter/material.dart'; // imports material design widgets and properities

// widget represents title bar
class TitleBar extends StatelessWidget {
  final String title;
  const TitleBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(vertical: 15),
      margin: const EdgeInsets.only(top: 28),
      color: const Color(0xccE5E5E5),
      child: Text(title,style: const TextStyle(fontSize: 30, color: Color.fromRGBO(0, 0, 0, 0.9)))
    );
  }
}