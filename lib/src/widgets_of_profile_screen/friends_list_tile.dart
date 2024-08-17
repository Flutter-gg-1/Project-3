import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FriendsListTile extends StatelessWidget {
  final String letter;
  final String title;
  final String subtitle;
  final Color color;
  const FriendsListTile({super.key, required this.letter, required this.subtitle, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return ListTile(
                          leading: CircleAvatar(
                            backgroundColor: color,
                            child: Text(letter, style: GoogleFonts.roboto(color: const Color(0xffffffff), fontSize: 15),),
                          ),
                          title: Text(title,
                              style: GoogleFonts.roboto(textStyle:  const TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 0, 0, 0)))),
                          subtitle: Text(subtitle, style:GoogleFonts.roboto()),
                          trailing: Icon(Icons.arrow_forward_ios_rounded, color: Colors.black.withOpacity(0.2),),
                        );
  }
}