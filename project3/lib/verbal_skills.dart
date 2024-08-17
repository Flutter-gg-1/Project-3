import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class VerbalSkills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: 376,
                  left: 150,
                  child: CircularIconWithLabel(
                    imagePath: 'assets/images/hands_pencil_1.png',
                    label: 'Intro',
                    number: '1',
                  ),
                ),
                Positioned(
                  left: 65,
                  top: 585,
                  child: CircularIconWithLabel(
                    imagePath: 'assets/images/hands_book.png',
                    label: 'Phrases',
                    number: '1',
                  ),
                ),
                Positioned(
                  right: 66,
                  top: 590,
                  child: CircularIconWithLabel(
                    imagePath: 'assets/images/dayflow_bike.png',
                    label: 'Travel',
                    number: '1',
                  ),
                ),
                Positioned(
                  right: 66,
                  top: 760,
                  child: CircularIconWithLabel(
                    imagePath: 'assets/vectors/vector_12_x2.svg',
                    label: 'Travel',
                    number: '1',
                    isSvg: true,
                  ),
                ),
                Positioned(
                  left: 65,
                  top: 760,
                  child: CircularIconWithLabel(
                    imagePath: 'assets/vectors/vector_12_x2.svg',
                    label: 'Travel',
                    number: '1',
                    isSvg: true,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 75, 0, 0),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 58),
                              decoration: BoxDecoration(
                                color: Color(0xCCE5E5E5),
                              ),
                              padding: EdgeInsets.fromLTRB(0, 21, 0, 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 22.8, 0),
                                    child: Text(
                                      'Verbal skills',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 30,
                                        color: Color(0xE5000000),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 9.5, 4),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, 0, 14.5, 2),
                                          child: SizedBox(
                                            width: 31,
                                            height: 27,
                                            child: SvgPicture.asset(
                                              'assets/vectors/vector_1_x2.svg',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 2, 0, 0),
                                          child: Text(
                                            '3',
                                            style: GoogleFonts.getFont(
                                              'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 25,
                                              color: Color(0xFFECC055),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 1, 9.4, 9),
                                    child: SizedBox(
                                      width: 28,
                                      height: 25,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_2_x2.svg',
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 1, 0, 5),
                                    child: Text(
                                      '213',
                                      style: GoogleFonts.getFont(
                                        'Roboto',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 25,
                                        color: Color(0xFF02A1FB),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 1, 113),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0x33000000)),
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFE9E8E8),
                              ),
                              child: SizedBox(
                                width: 211,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(0, 64, 0, 9),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(2.3, 0, 0, 4),
                                        child: Text(
                                          'Unit 1',
                                          style: GoogleFonts.getFont(
                                            'Roboto',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            color: Color(0xFF000000),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            'assets/vectors/vector_1_x2.svg',
                                            width: 27,
                                            height: 27,
                                          ),
                                          SizedBox(
                                            width: 3,
                                          ),
                                          SizedBox(
                                            width: 107,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(12),
                                                bottomRight:
                                                    Radius.circular(12),
                                              ),
                                              child: Container(
                                                color: Colors.grey[300],
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                    width: 120,
                                                    child:
                                                        LinearProgressIndicator(
                                                      value: 0.5,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                                  Color>(
                                                              Colors.amber),
                                                      minHeight: 12,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            '3/40',
                                            style: GoogleFonts.getFont(
                                              'Roboto',
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Color(0x80000000),
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
                      Positioned(
                        top: 85,
                        left: 150,
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage(
                                'assets/images/beep_beep_horse.png',
                              ),
                            ),
                          ),
                          child: Container(
                            width: 124,
                            height: 98,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CircularIconWithLabel extends StatelessWidget {
  final String imagePath;
  final String label;
  final String number;
  final bool isSvg;

  CircularIconWithLabel({
    required this.imagePath,
    required this.label,
    required this.number,
    this.isSvg = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.transparent,
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color.fromRGBO(196, 196, 196, 1),
                  width: 8,
                ),
              ),
            ),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Color.fromRGBO(114, 191, 199, 1),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: isSvg
                      ? SvgPicture.asset(
                          imagePath,
                          width: 40,
                          height: 40,
                        )
                      : Image.asset(
                          imagePath,
                          width: 90,
                          height: 90,
                        ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 2,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/vectors/vector_1_x2.svg',
                    width: 30,
                    height: 30,
                  ),
                  Text(
                    number,
                    style: GoogleFonts.getFont(
                      'Roboto',
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text(
          label,
          style: GoogleFonts.getFont(
            'Roboto',
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Color(0xFF000000),
          ),
        ),
      ],
    );
  }
}

