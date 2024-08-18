import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileCardIcon extends StatelessWidget {
  const ProfileCardIcon({
    super.key, required this.title, required this.sub, required this.img,
  });

  final String title;
  final String sub;
  final String  img;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 65,
        width: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
                color: const Color(0xff000000).withOpacity(0.1), width: 3)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Image.asset(img),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: GoogleFonts.roboto(fontSize: 16)),
                  Text(sub,
                      style: GoogleFonts.roboto(fontSize: 16 , color: const Color(0xff000000).withOpacity(0.4))),


                      
                ],
              ),
            )
          ],
        )
       
        );
  }
}
