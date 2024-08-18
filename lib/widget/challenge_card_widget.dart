

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChallengeCardWidget extends StatelessWidget {
  const ChallengeCardWidget({
    super.key, required this.title, required this.sub, required this.img,
  });

  final String title;
  final String sub;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Container(
        
        width: 370,
        height: 115,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
                color: const Color(0xff000000).withOpacity(0.1), width: 3)),
        child: Row(
          children: [
            Image.asset(
              img,
              height: 110,
              width: 120,
            )
      
            ,const SizedBox(width: 16,)
      
      
            ,Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              
                children: [
              
                  Text(title,softWrap: true, style: GoogleFonts.roboto(fontSize: 18)),
                  const SizedBox(height: 5,),
                  Text(sub,softWrap :true , style: GoogleFonts.roboto(fontSize: 15)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
