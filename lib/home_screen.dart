import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      // title
      TextField(),
      TextField(),
      // forgot password
      ElevatedButton(onPressed: () {}, child: Text('GO')),
      // signup
      // imgage
    ]));
  }
}
