import 'package:flutter/material.dart';

class LoginTitle extends StatelessWidget {
  const LoginTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: const TextSpan(
            style: TextStyle(fontFamily: 'Ribeye', fontSize: 40),
            children: [
          TextSpan(
              text: 'M',
              style: TextStyle(color: Color.fromRGBO(235, 159, 74, 1))),
          TextSpan(
              text: 'E',
              style: TextStyle(color: Color.fromRGBO(119, 178, 159, 1))),
          TextSpan(
              text: 'N',
              style: TextStyle(color: Color.fromRGBO(171, 112, 223, 1))),
          TextSpan(
              text: 'T',
              style: TextStyle(color: Color.fromRGBO(104, 132, 246, 1))),
          TextSpan(
              text: 'A',
              style: TextStyle(color: Color.fromRGBO(236, 192, 85, 1))),
          TextSpan(
              text: 'L ',
              style: TextStyle(color: Color.fromRGBO(119, 178, 159, 1))),
          TextSpan(
              text: '^',
              style: TextStyle(color: Color.fromRGBO(171, 112, 223, 1))),
          TextSpan(
              text: 'u',
              style: TextStyle(color: Color.fromRGBO(104, 132, 246, 1))),
          TextSpan(
              text: 'p',
              style: TextStyle(color: Color.fromRGBO(236, 192, 85, 1))),
          TextSpan(
              text: '^',
              style: TextStyle(color: Color.fromRGBO(119, 178, 159, 1))),
        ]));
  }
}
