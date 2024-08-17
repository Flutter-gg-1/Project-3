import 'package:flutter/material.dart';

class LoginInput extends StatelessWidget {
  final String label;
  const LoginInput({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 316,
      margin: EdgeInsets.only(top: label == 'Username' ? 50 : 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: label,
            hintStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 0, 0, 0.4)),
            contentPadding: const EdgeInsets.only(left: 31, top: 10)),
      ),
    );
  }
}
