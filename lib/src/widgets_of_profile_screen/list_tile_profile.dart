import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListTileProfileWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final Image icon;
  const ListTileProfileWidget({super.key, required this.icon, required this.subtitle, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 70,
                width: 195,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0xffE5E5E5), width: 3)),
                child: ListTile(
                  leading: icon,
                  title: Text(title, style:GoogleFonts.roboto(textStyle:const TextStyle(fontSize: 20)),),
                  subtitle: Text(subtitle, style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.4)))),
                ),
              );
  }
}