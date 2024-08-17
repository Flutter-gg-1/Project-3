import 'package:flutter/material.dart';

class Challenges extends StatelessWidget {
  const Challenges({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbf5f2),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(75),
              child: 
              Container(
                height: 71,
                width: 428,
                color: const Color(0xffE5E5E5),
                child: const Text(
                      "Challenges",
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20),
                    ),
              ))),
      body: const Scaffold()
    );
  }
}