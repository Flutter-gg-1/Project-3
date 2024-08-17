import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  child: Center(
                    child: Text(
                      "Challenges",
                      style: GoogleFonts.roboto(textStyle:const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0), fontSize: 30)),
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
                width: 80,
                height: 100.38,
              ),
              title: Text('Complete 1000 word streak', style: GoogleFonts.roboto(textStyle:const TextStyle(fontSize: 20, color: Colors.black)),),
              subtitle: Text('Win 1000XP along with 300 diamonds.', style: GoogleFonts.roboto(textStyle:const TextStyle(color: Colors.black, fontSize: 15)),),
            ),
            Align(
              alignment: const Alignment(-0.73,0),
              child: Text("Achievements", style: GoogleFonts.roboto(textStyle:const TextStyle(fontSize: 28),))),
            ListTileWidget(
              photo: Image.asset(
                'assets/challenges_icons/Painting 1.png',
                width: 116,
                height: 104.38,
              ),
              title:  Text('Lorem Ipsum', style: GoogleFonts.roboto(textStyle:const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500)),),
              subtitle:  Text('is simply dummy text of the printing and typesetting industry.', style: GoogleFonts.roboto(textStyle:const TextStyle(color: Colors.black, fontSize: 16))),
            ),
            ListTileWidget(
              photo: Image.asset(
                'assets/challenges_icons/Plant 2.png',
                width: 116,
                height: 104.38,
              ),
              title:  Text('Lorem Ipsum', style: GoogleFonts.roboto(textStyle:const TextStyle(fontSize: 20, color:  Colors.black, fontWeight: FontWeight.w500))),
              subtitle:  Text('is simply dummy text of the printing and typesetting industry.', style: GoogleFonts.roboto(textStyle:const TextStyle(color: Colors.black, fontSize: 16))),
            ),
            ListTileWidget(
              photo: Image.asset(
                'assets/challenges_icons/Basketball.png',
                width: 116,
                height: 104.38,
              ),
              title: Text('Lorem Ipsum', style: GoogleFonts.roboto(textStyle:const TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500))),
              subtitle:  Text('is simply dummy text of the printing and typesetting industry.', style: GoogleFonts.roboto(textStyle:const TextStyle(color: Colors.black, fontSize: 16))),
            ),
            
          ],
        )));
  }
}
