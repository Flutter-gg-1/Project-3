import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
              text:  TextSpan(
                children: [
                  TextSpan(text: 'M', style: GoogleFonts.ribeye(textStyle:  const TextStyle(color: Color(0xffEB9F4A), fontSize: 40))),
                  TextSpan(text: 'E', style: GoogleFonts.ribeye(textStyle:  const TextStyle(color: Color(0xff77B29F), fontSize: 40))),
                  TextSpan(text: 'N', style: GoogleFonts.ribeye(textStyle:  const TextStyle(color: Color(0xffAB70DF), fontSize: 40))),
                  TextSpan(text: 'T', style: GoogleFonts.ribeye(textStyle:  const TextStyle(color: Color(0xff6884F6), fontSize: 40))),
                  TextSpan(text: 'A', style: GoogleFonts.ribeye(textStyle:  const TextStyle(color: Color(0xffECC055), fontSize: 40))),
                  TextSpan(text: 'L', style: GoogleFonts.ribeye(textStyle:  const TextStyle(color: Color(0xff77B29F), fontSize: 40))),
                  TextSpan(text: ' ^', style: GoogleFonts.ribeye(textStyle:  const TextStyle(color: Color(0xffAB70DF), fontSize: 40))),
                  TextSpan(text: 'u', style: GoogleFonts.ribeye(textStyle:  const TextStyle(color: Color(0xff6884F6), fontSize: 40))),
                  TextSpan(text: 'p', style: GoogleFonts.ribeye(textStyle:  const TextStyle(color: Color(0xffECC055), fontSize: 40))),
                  TextSpan(text: '^', style: GoogleFonts.ribeye(textStyle:  const TextStyle(color: Color(0xff77B29F), fontSize: 40))),
        
                ]
              ),
            );
  }
}