import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:project_3/widget/cricle_info_icon_widget.dart';
import 'package:project_3/widget/skill_info_card_widget.dart';

class SkillInfoPage extends StatelessWidget {
  const SkillInfoPage({super.key, required this.complit, required this.title});

  final String complit;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 75, bottom: 50),
              width: double.infinity,
              height: 71,
              color: const Color(0xccE5E5E5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(title,
                      style: GoogleFonts.roboto(
                        fontSize: 20,
                      )),
                  const SizedBox(
                    width: 35,
                  ),
                  const Baseline(
                      baselineType: TextBaseline.alphabetic,
                      baseline: 18,
                      child: Icon(
                        FontAwesome.crown_solid,
                        color: Color(0xffECC055),
                      )),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    complit,
                    style: GoogleFonts.roboto(
                        fontSize: 20, color: const Color(0xffECC055)),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.diamond,
                    color: Color(0xff02A1FB),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("213",
                      style: GoogleFonts.roboto(
                          fontSize: 20, color: const Color(0xff02A1FB))),
                ],
              ),
            ),
            SkillInfoCardWidget(complit: complit),


            const SizedBox(height: 65,),


             const CricleInfoIconWidget(img: "asset/skillInfoPage/Hands Pencil 1.png",),
            Text("Intro", style: GoogleFonts.roboto(fontSize: 16)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                     const CricleInfoIconWidget(img: "asset/skillInfoPage/Hands Book.png",),
                     Text("Phrases", style: GoogleFonts.roboto(fontSize: 16)),
                  ],
                ),

                const SizedBox(width: 20,),

                Column(
                  children: [
                     const CricleInfoIconWidget(img: "asset/skillInfoPage/Dayflow Bike.png",),
                     Text("Travel", style: GoogleFonts.roboto(fontSize: 16)),
                  ],
                )
              ],
            )


            , const CricleInfoIconWidget(img: "L",),


            const SizedBox(height: 30,),


            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [


              CricleInfoIconWidget(img: "L",),
                SizedBox(width: 20,),
              CricleInfoIconWidget(img: "L",)
            ],)
          ],
        ),
      )),
    );
  }
}
