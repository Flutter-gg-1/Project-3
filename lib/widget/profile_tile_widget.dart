
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

class ProfileTileWidget extends StatelessWidget {
  const ProfileTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Nidhi Pandya",
                        style: GoogleFonts.roboto(fontSize: 25)),
                    Text("Nidhi12",
                        style: GoogleFonts.roboto(
                            color: const Color(0xff000000).withOpacity(0.5))),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Icon(
                          FontAwesome.clock,
                          size: 16,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("Joined March 2022",
                            style: GoogleFonts.roboto()),
                      ],
                    )
                  ]),
            ),
            const Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Image.asset(
                "asset/ProfilePage/Ellipse 1.png",
                height: 75,
                width: 75,
              ),
            ),
          ],
        )
    
      
        );
  }
}
