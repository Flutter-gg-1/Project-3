import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:project_3/widget/bottom_navigation_bar_widget.dart';
import 'package:project_3/widget/invite_frind_card_widget.dart';
import 'package:project_3/widget/profile_card_icon.dart';
import 'package:project_3/widget/profile_tile_widget.dart';
import 'package:project_3/widget/table_row_widget.dart';
import 'package:project_3/widget/view_frind_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      bottomNavigationBar: const BottomNavigationBarWidget(
        index: 2,
        color: Color(0xffAB70DF),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 75, bottom: 50),
              width: double.infinity,
              height: 71,
              color: const Color(0xccE5E5E5),
              child: Center(
                child: Text("Profile", style: GoogleFonts.roboto(fontSize: 25)),
              ),
            ),
            const ProfileTileWidget(),
            const Padding(
              padding: EdgeInsets.only(top: 28, bottom: 8),
              child: Divider(),
            ),
            const ViewFrindWidget(),
            Padding(
              padding: const EdgeInsets.only(left: 18 , top: 30),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Statistics",
                      style: GoogleFonts.roboto(fontSize: 25))),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProfileCardIcon(
                  title: "3",
                  sub: "Day Streak",
                  img: "asset/ProfilePage/Vector (3).png",
                ),
                SizedBox(
                  width: 15,
                ),
                ProfileCardIcon(
                  title: "1432",
                  sub: "Total XP",
                  img: "asset/ProfilePage/Vector (4).png",
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProfileCardIcon(
                  title: "Bronze",
                  sub: "Current League",
                  img: "asset/ProfilePage/noto_3rd-place-medal.png",
                ),
                SizedBox(
                  width: 15,
                ),
                ProfileCardIcon(
                  title: "0",
                  sub: "Top 3 Finishes",
                  img: "asset/ProfilePage/bx_medal.png",
                )
              ],
            ),

            const SizedBox(height:35 ,),
            Row(
              children: [
                const SizedBox(
                  width: 18,
                ),
                Text("Friends", style: GoogleFonts.roboto(fontSize: 25)),
                const Spacer(
                  flex: 1,
                ),
                Text("ADD FRIENDS",
                    style: GoogleFonts.roboto(
                        fontSize: 18, color: const Color(0xff02A1FB))),
                const SizedBox(
                  width: 15,
                )
              ],
            ),

            const SizedBox(height:15 ,),
            Container(
              margin: const EdgeInsets.only(left: 25, right: 25),
              height: 160,
              width: 370,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                      color: const Color(0xff000000).withOpacity(0.1),
                      width: 3)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("FOLLOWING",
                          style: GoogleFonts.roboto(
                              fontSize: 14, color: const Color(0xff02A1FB))),
                      const SizedBox(
                        width: 100,
                      ),
                      Text("FOLLOWERS",
                          style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: const Color(0xff000000).withOpacity(0.5))),
                    ],
                  ),
                  const Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: Color(0xff02A1FB),
                          thickness: 3,
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: 3,
                      ))
                    ],
                  ),
                  const TableRowWidget(
                    char: "H",
                    name: "Hardi",
                    sub: "4367 XP",
                    charColor: Color(0xffAB70DF),
                  ),
                  const Divider(
                    thickness: 3,
                  ),
                  const TableRowWidget(
                    char: "K",
                    name: "Krishna",
                    sub: "2334 XP",
                    charColor: Color(0xffDF7070),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),



            const InviteFrindCardWidget(),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      )),
    );
  }
}

