import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InviteFriends extends StatelessWidget {
  const InviteFriends({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 228,
              width: 378,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xffE5E5E5), width: 3)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ListTile(
                    leading: FittedBox(
                      alignment: const Alignment(-0.3,0),
                      fit: BoxFit.none,
                      child: Image.asset('assets/profile_icons/Cat.png', width: 222,height: 116)),
                    title:  Text("Invite your friends",
                        style: GoogleFonts.roboto(textStyle:  const TextStyle(
                            fontSize: 20, color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500)),),
                    subtitle: Text(
                        "Tell your friends it’s free and fun to learn on Mental up!", style: GoogleFonts.roboto(textStyle:  const TextStyle(
                            fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)))),
                  ),
                  Container(
                    height: 47,
                    width: 321,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xff02A1FB), 
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xff02A1FB),
                            blurRadius: 4,
                            offset: Offset(0, 2)
                          )
                        ]),
                    child: const Center(
                      child: Text(
                        "INVITE FRIENDS",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            );
  }
}