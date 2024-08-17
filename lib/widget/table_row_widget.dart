import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class TableRowWidget extends StatelessWidget {
  const TableRowWidget({
    super.key, required this.name, required this.sub, required this.char, required this.charColor,
  });

  final String name;
  final String sub;
  final String char;
  final Color charColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 15,
        ),
        CircleAvatar(
            backgroundColor: charColor,
            child: Text(char,
                style: GoogleFonts.roboto(color: Colors.white))),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,
                style: GoogleFonts.roboto(fontSize: 17)),
            Text(sub,
                style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: const Color(0xff000000).withOpacity(0.4))),
          ],
        ),
        const Spacer(
          flex: 1,
        ),
        Icon(
          FontAwesome.arrow_right_solid,
          color: const Color(0xff000000).withOpacity(0.2),
        ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }
}
