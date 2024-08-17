import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InviteFrindCardWidget extends StatelessWidget {
  const InviteFrindCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      width: 360,
      height: 220,
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color(0xff000000).withOpacity(0.1), width: 3),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        children: [
    
          const SizedBox(height: 15,),
          Row(
            children: [
              Image.asset("asset/ProfilePage/Dayflow Black Cat.png"),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Invite your friends",
                        style: GoogleFonts.roboto(
                            fontSize: 14, fontWeight: FontWeight.bold)),
                    Text(
                        "Tell your friends it’s free and fun to learn on Mental up!",
                        softWrap: true,
                        style: GoogleFonts.roboto(
                            fontSize: 14,
                            color: const Color(0xff000000)
                                .withOpacity(0.5))),
                  ],
                ),
              )
            ],
          ),
    
    
    
    
          const SizedBox(height: 20,),
    
          
          Container(
            width: 250,
            height: 40,
            decoration: BoxDecoration(
                color: const Color(0xff02A1FB),
                borderRadius: BorderRadius.circular(16)),
            child: Center(
              child: Text("INVITE FRIENDS",
                  style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold)),
            ),
          )
        ],
      ),
    );
  }
}
