import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class ViewFrindWidget extends StatelessWidget {
  const ViewFrindWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 60,
        width: 350,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
                color: const Color(0xff000000).withOpacity(0.1), width: 2)),
        child: ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.asset("asset/ProfilePage/🎊.png"),
          ),
          title: Text("Friends updates", style: GoogleFonts.roboto(fontSize: 18)),
          trailing: Icon(
            FontAwesome.arrow_right_solid,
            color: const Color(0xff000000).withOpacity(0.2),
          ),
        ),
      ),
    );
  }
}
