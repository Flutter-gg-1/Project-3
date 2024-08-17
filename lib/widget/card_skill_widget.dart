import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class CardSkillWidget extends StatelessWidget {
  const CardSkillWidget({super.key, required this.complit});

  final String complit;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20,),
        Container(
          width: 155,
          height: 210,
          decoration: BoxDecoration(
              color: const Color(0xffC4C4C4).withOpacity(0.4),
              borderRadius: BorderRadius.circular(16)),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween
            children: [
              const SizedBox(
                height: 10,
              ),
              Text("unit 1", style: GoogleFonts.roboto(fontSize: 26)),
              const Spacer(
                flex: 1,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Icon(
                  FontAwesome.crown_solid,
                  color: Color(0xffECC055),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: 110,
                  height: 14,
                  child: LinearProgressIndicator(
                    color: const Color(0xffECC055),
                    value: double.parse(complit)/40,
                    backgroundColor: const Color(0xffC4C4C4),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ]),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ),


        SizedBox(width: 15,),





          Container(
          width: 155,
          height: 210,
          decoration: BoxDecoration(
              color: const Color(0xffC4C4C4).withOpacity(0.4),
              borderRadius: BorderRadius.circular(16)),
          child: Icon(FontAwesome.lock_solid ,color: Color(0xff000000).withOpacity(0.5),size: 50,)
        )
      ],
    );
  }
}
