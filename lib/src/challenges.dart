import 'package:flutter/material.dart';

import 'widgets_of_challenges_screen/list_tile.dart';

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
                child: Container(
                  height: 71,
                  width: 428,
                  color: const Color(0xffE5E5E5),
                  child: const Center(
                    child: Text(
                      "Challenges",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 30),
                    ),
                  ),
                ))),
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListTileWidget(
              photo: Image.asset(
                'assets/challenges_icons/Group.png',
                width: 116,
                height: 104.38,
              ),
              title: const Text('Complete 1000 word streak', style: TextStyle(fontSize: 18, color: Colors.black)),
              subtitle: const Text('Win 1000XP along with 300 diamonds.', style: TextStyle(color: Colors.black, fontSize: 14)),
            ),
            const Align(
              alignment: Alignment(-0.73,0),
              child: Text("Achievements", style: TextStyle(fontSize: 28),)),
            ListTileWidget(
              photo: Image.asset(
                'assets/challenges_icons/Painting 1.png',
                width: 116,
                height: 104.38,
              ),
              title: const Text('Lorem Ipsum', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),),
              subtitle: const Text('is simply dummy text of the printing and typesetting industry.', style: TextStyle(color: Colors.black, fontSize: 16)),
            ),
            ListTileWidget(
              photo: Image.asset(
                'assets/challenges_icons/Plant 2.png',
                width: 116,
                height: 104.38,
              ),
              title: const Text('Lorem Ipsum', style: TextStyle(fontSize: 20, color:  Colors.black, fontWeight: FontWeight.w500)),
              subtitle: const Text('is simply dummy text of the printing and typesetting industry.', style: TextStyle(color: Colors.black, fontSize: 16)),
            ),
            ListTileWidget(
              photo: Image.asset(
                'assets/challenges_icons/Basketball.png',
                width: 116,
                height: 104.38,
              ),
              title: const Text('Lorem Ipsum', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500)),
              subtitle: const Text('is simply dummy text of the printing and typesetting industry.', style: TextStyle(color: Colors.black, fontSize: 16)),
            ),
            
          ],
        )));
  }
}
