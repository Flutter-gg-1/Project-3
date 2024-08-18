import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_3/widget/bottom_navigation_bar_widget.dart';
import 'package:project_3/widget/challenge_card_widget.dart';

class ChallengesPage extends StatelessWidget {
  const ChallengesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      bottomNavigationBar: const BottomNavigationBarWidget(
        index: 1,
        color: Color(0xffDC3F00),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 75, bottom: 50),
                width: double.infinity,
                height: 71,
                color: const Color(0xccE5E5E5),
                child: Center(
                  child: Text("Challenges",
                      style: GoogleFonts.roboto(fontSize: 25)),
                ),
              ),
              const ChallengeCardWidget(img: "asset/ChallengesPage/Group.png",sub: "Win 1000XP along with 300 diamonds.",title: "Complete 1000 word streak",)

              ,Padding(
              padding: const EdgeInsets.only(left: 18 , top: 30, bottom: 30),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Achievements",
                      style: GoogleFonts.roboto(fontSize: 25))),
            ),


            const ChallengeCardWidget(img: "asset/ChallengesPage/Stuck at Home Vertical Painting 1.png",sub: "Win 1000XP along with 300 diamonds.",title: "Complete 1000 word streak",),
            const SizedBox(height: 35,),
            const ChallengeCardWidget( title: "Lorem Ipsum ",sub: "is simply dummy text of the printing and typesetting industry.",img: "asset/ChallengesPage/Pebble People Plant 2.png",),
            const SizedBox(height: 35,),
            const ChallengeCardWidget( img: "asset/ChallengesPage/Pebble People Basketball.png",title: "Lorem Ipsum ",sub: "is simply dummy text of the printing and typesetting industry.",),


            const SizedBox(height: 100,)
            ],
          ),
        ),
      ),
    );
  }
}

