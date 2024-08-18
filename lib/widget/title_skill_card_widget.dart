




import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class TitleSkillCardWidget extends StatelessWidget {
  const TitleSkillCardWidget({super.key, required this.title, required this.complit});


  final String title;
  final String complit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
      
        children: [
          const SizedBox(width: 16,),
          Text(title , style: GoogleFonts.roboto(fontSize: 30),),
      
          const SizedBox(width: 10,),
      
          const Icon(FontAwesome.crown_solid , color: Color(0xffECC055),),
          const SizedBox(width: 5 ,),
          Text("$complit/40" , style: GoogleFonts.roboto(color: const Color(0xff000000).withOpacity(0.6)),),
      
      
      
        ],
        
      ),
    );
  }
}