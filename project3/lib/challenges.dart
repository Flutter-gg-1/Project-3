import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Challenges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 75, 0, 0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 31),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Color(0xCCE5E5E5),
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(0, 18, 0.3, 18),
                              child: Center(
                                child: Text(
                                  'Challenges',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 30,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(24, 0, 26, 31),
                          padding: EdgeInsets.fromLTRB(10, 3, 0, 2.6),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0x1A000000)),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 116,
                                  height: 104.4,
                                  child: SizedBox(
                                    width: 116,
                                    height: 104.4,
                                    child: SvgPicture.asset(
                                      'assets/vectors/group_x2.svg',
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 2, 0, 11.4),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 0, 9),
                                        child: Text(
                                          'Complete 1000 word streak',
                                          style: GoogleFonts.getFont(
                                            'Roboto',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            color: Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 0, 1.8, 0),
                                        child: Text(
                                          'Win 1000XP along with 300 diamonds.',
                                          style: GoogleFonts.getFont(
                                            'Roboto',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 15,
                                            color: Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(25, 0, 25, 31),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Achievements',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 30,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors
                                  .white, // Background color of the container
                              borderRadius: BorderRadius.circular(
                                  28.0), // Rounded corners
                              border: Border.all(
                                color: Colors.grey.shade300, // Border color
                                width: 3.0, // Border width
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Image.asset(
                                          'assets/images/stuck_at_home_vertical_painting_1.png',
                                          height: 120,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: ListTile(
                                          title: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10.0),
                                            child: Text(
                                              'Invite your friends ',
                                              style: GoogleFonts.getFont(
                                                'Roboto',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20,
                                                height: 1.3,
                                              ),
                                            ),
                                          ),
                                          subtitle: Text(
                                            'Tell your friends it’s free and fun to learn on Mental up!',
                                            style: GoogleFonts.getFont(
                                              'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors
                                  .white, // Background color of the container
                              borderRadius: BorderRadius.circular(
                                  28.0), // Rounded corners
                              border: Border.all(
                                color: Colors.grey.shade300, // Border color
                                width: 3.0, // Border width
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Image.asset(
                                          'assets/images/pebble_people_plant_2.png',
                                          height: 120,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: ListTile(
                                          title: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10.0),
                                            child: Text(
                                              'Invite your friends ',
                                              style: GoogleFonts.getFont(
                                                'Roboto',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20,
                                                height: 1.3,
                                              ),
                                            ),
                                          ),
                                          subtitle: Text(
                                            'Tell your friends it’s free and fun to learn on Mental up!',
                                            style: GoogleFonts.getFont(
                                              'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors
                                  .white, // Background color of the container
                              borderRadius: BorderRadius.circular(
                                  28.0), // Rounded corners
                              border: Border.all(
                                color: Colors.grey.shade300, // Border color
                                width: 3.0, // Border width
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Image.asset(
                                          'assets/images/pebble_people_basketball.png',
                                          height: 120,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: ListTile(
                                          title: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10.0),
                                            child: Text(
                                              'Invite your friends ',
                                              style: GoogleFonts.getFont(
                                                'Roboto',
                                                fontWeight: FontWeight.w500,
                                                fontSize: 20,
                                                height: 1.3,
                                              ),
                                            ),
                                          ),
                                          subtitle: Text(
                                            'Tell your friends it’s free and fun to learn on Mental up!',
                                            style: GoogleFonts.getFont(
                                              'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 20,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// كومنت هذا عن تفاصيل الصفحة:

// التخطيط والنسق 
//** استخدمت stack */
//    -  استخدامت مفهوم  Stack لتوفير  مرونه  وتراكب في العناصر، .
//    - استخدمت   SingleChildScrollView  لتمكين التمرير الى اعلى  في حال كانت المحتويات تجاوزت حجم الشاشة.
//    -  استخدمت Padding و Margin   لضبط المسافات بين العناصر    .
//    -  استخدمت BoxDecoration لتحسين  العناصر    .
// 
