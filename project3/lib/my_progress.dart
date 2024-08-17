import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project3/verbal_skills.dart';



class MyProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xCCE5E5E5),
          elevation: 0,
          toolbarHeight: 80, 
          title: Padding(
            padding: EdgeInsets.symmetric(vertical: 21),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10.5),
                      child: SizedBox(
                        width: 26,
                        height: 29,
                        child: SvgPicture.asset(
                          'assets/vectors/vector_17_x2.svg',
                        ),
                      ),
                    ),
                    Text(
                      '3',
                      style: GoogleFonts.getFont(
                        'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                        color: Color(0xFFEB9F4A),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10.1),
                      child: SizedBox(
                        width: 30,
                        height: 29,
                        child: SvgPicture.asset(
                          'assets/vectors/vector_11_x2.svg',
                        ),
                      ),
                    ),
                    Text(
                      '1432 XP',
                      style: GoogleFonts.getFont(
                        'Roboto',
                        fontWeight: FontWeight.w400,
                        fontSize: 25,
                        color: Color(0xFF338F9B),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 77,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 9),
                        child: SizedBox(
                          width: 32,
                          height: 29,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_16_x2.svg',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 7, 0, 6),
                        child: SizedBox(
                          width: 36,
                          height: 16,
                          child: SvgPicture.asset(
                            'assets/vectors/vector_26_x2.svg',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFBF5F2),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 75, 0, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(25.2, 0, 26.4, 9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 16.2, 0),
                          child: Text(
                            'Logical reasoning',
                            style: GoogleFonts.getFont(
                              'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 35,
                              color: Color(0xE5000000),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5, 0.4, 9),
                          child: SizedBox(
                            width: 31,
                            height: 27,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_21_x2.svg',
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 9, 0, 9),
                            child: Text(
                              '18/40',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Color(0x99000000),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(24, 0, 26, 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VerbalSkills()),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0x66C4C4C4),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(12, 17, 12, 18),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(1, 0, 0, 130),
                                        child: Text(
                                          'Unit 1',
                                          style: GoogleFonts.getFont(
                                            'Roboto',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 30,
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
                                            width: 80,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(12),
                                                bottomRight:
                                                    Radius.circular(12),
                                              ),
                                              child: Container(
                                                color: Color.fromARGB(
                                                    255, 105, 105, 105),
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                    width: 60,
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
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0x66C4C4C4),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              height: 227,
                              padding: EdgeInsets.fromLTRB(0, 84, 0, 84),
                              child: SizedBox(
                                width: 47,
                                height: 59,
                                child: SvgPicture.asset(
                                  'assets/vectors/vector_12_x2.svg',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(25.3, 0, 33.4, 9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 40.3, 0),
                          child: Text(
                            'Artistic thinking',
                            style: GoogleFonts.getFont(
                              'Roboto',
                              fontWeight: FontWeight.w400,
                              fontSize: 35,
                              color: Color(0xE5000000),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5, 0.4, 9),
                          child: SizedBox(
                            width: 31,
                            height: 27,
                            child: SvgPicture.asset(
                              'assets/vectors/vector_27_x2.svg',
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 9, 0, 9),
                            child: Text(
                              '35/40',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                                color: Color(0x99000000),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(24, 0, 26, 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VerbalSkills()),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0x66C4C4C4),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(12, 17, 12, 18),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(1, 0, 0, 130),
                                        child: Text(
                                          'Unit 1',
                                          style: GoogleFonts.getFont(
                                            'Roboto',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 30,
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
                                            width: 80,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(12),
                                                bottomRight:
                                                    Radius.circular(12),
                                              ),
                                              child: Container(
                                                color: Color.fromARGB(
                                                    255, 105, 105, 105),
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                    width: 60,
                                                    child:
                                                        LinearProgressIndicator(
                                                      value: 0.8,
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
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0x66C4C4C4),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              height: 227,
                              padding: EdgeInsets.fromLTRB(0, 84, 0, 84),
                              child: SizedBox(
                                width: 47,
                                height: 59,
                                child: SvgPicture.asset(
                                  'assets/vectors/vector_14_x2.svg',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(25.4, 0, 33.5, 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 20.5, 0),
                          child: SizedBox(
                            width: 188,
                            child: Text(
                              'Verbal skills',
                              style: GoogleFonts.getFont(
                                'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 35,
                                color: Color(0xE5000000),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 9),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 24.5, 0),
                                child: SizedBox(
                                  width: 31,
                                  height: 27,
                                  child: SvgPicture.asset(
                                    'assets/vectors/vector_9_x2.svg',
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 4, 0, 0),
                                child: Text(
                                  '3/40',
                                  style: GoogleFonts.getFont(
                                    'Roboto',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 20,
                                    color: Color(0x99000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(25, 0, 25, 44),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VerbalSkills()),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0x66C4C4C4),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(12, 22, 12, 11),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(1, 0, 0, 132),
                                        child: Text(
                                          'Unit 1',
                                          style: GoogleFonts.getFont(
                                            'Roboto',
                                            fontWeight: FontWeight.w400,
                                            fontSize: 30,
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
                                            width: 80,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(12),
                                                bottomRight:
                                                    Radius.circular(12),
                                              ),
                                              child: Container(
                                                color: Color.fromARGB(
                                                    255, 105, 105, 105),
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                    width: 60,
                                                    child:
                                                        LinearProgressIndicator(
                                                      value: 0.2,
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
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(0x66C4C4C4),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              height: 227,
                              padding: EdgeInsets.fromLTRB(0, 84, 0, 84),
                              child: SizedBox(
                                width: 47,
                                height: 59,
                                child: SvgPicture.asset(
                                  'assets/vectors/vector_15_x2.svg',
                                ),
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
          ),
        ),
      ),
    );
  }
}


