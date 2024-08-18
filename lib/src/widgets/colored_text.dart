import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//diffrent letter with diffrent colors in log in screen title
List<Color> colors = [
  const Color(0xffEB9F4A),
  const Color(0xff77B29F),
  const Color(0xffAB70DF),
  const Color(0xff6884F6),
  const Color(0xffECC055),
];

List<Widget> coloredText(String text) {
  return text.split('').asMap().entries.map((entry) {
    int index = entry.key;
    String char = entry.value;
    return Text(
      char,
      style: GoogleFonts.ribeye(
        color: colors[index % colors.length],
        fontSize: 40,
      ),
    );
  }).toList();
}
