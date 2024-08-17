import 'package:flutter/material.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Text(""),
          bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 71),
              child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 71,
                  color: const Color(0xffE5E5E5),
                  child: const Text("Challenges",
                      style: TextStyle(fontSize: 30)))),
        ),
        body: ListView(
          padding: EdgeInsets.all(30),
          children: [
            Column(
              children: [
                Container(
                  width: 378,
                  height: 116,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 3),
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    leading: Image(image: AssetImage("assets/read.png")),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
