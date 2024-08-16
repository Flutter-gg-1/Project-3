import 'package:flutter/material.dart';

class VerbalSkillScreen extends StatelessWidget {
  const VerbalSkillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbf5f2),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(75),
              child: Container(
                height: 71,
                width: 428,
                color: const Color(0xffE5E5E5),
                child: Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 47)),
                    const Text(
                      "Verbal skills",
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 24),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 60)),
                    Image.asset(
                      'assets/home_screen_icons/crown.png',
                      width: 25,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    const Text(
                      "3",
                      style: TextStyle(color: Color(0xffEB9F4A), fontSize: 20),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    const Icon(
                      Icons.diamond,
                      color: Color(0xff02A1FB),
                      size: 35,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    const Text(
                      "213",
                      style: TextStyle(color: Color(0xff02A1FB), fontSize: 20),
                    ),
                  ],
                ),
              ))),
      body: SafeArea(
        child: Column(
          children: [
            
          ],
        ))
    );
  }
}