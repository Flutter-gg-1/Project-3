import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class SkillInfoCardWidget extends StatelessWidget {
  const SkillInfoCardWidget({
    super.key,
    required this.complit,
  });

  final String complit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 195,
      height: 115,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border:
              Border.all(color: Colors.grey.withOpacity(0.3), width: 3),
          color: const Color(0xffE9E8E8)),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -55,
            left: 46,
            child: Image.asset(
              "asset/skillInfoPage/Beep Beep Horse.png",
              width: 95,
              height: 100,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Unit 1", style: GoogleFonts.roboto(fontSize: 20)),
              Padding(
                padding: const EdgeInsets.only(left: 22, bottom: 5),
                child: Row(
                  children: [
                    const Baseline(
                      baselineType: TextBaseline.alphabetic,
                      baseline: 15,
                      child: Icon(
                        FontAwesome.crown_solid,
                        color: Color(0xffECC055),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 6, right: 8),
                      width: 75,
                      height: 14,
                      child: LinearProgressIndicator(
                        color: const Color(0xffECC055),
                        value: double.parse(complit) / 40,
                        backgroundColor: const Color(0xffC4C4C4),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    Text("$complit/40",
                        style: GoogleFonts.roboto(
                            color: const Color(0xff000000).withOpacity(0.5))),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}