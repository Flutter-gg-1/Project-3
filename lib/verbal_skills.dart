import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerbalSkills extends StatelessWidget {
  const VerbalSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      body: ListView(
        children: [
          Container(
            color: const Color(0xeffE9E8E8),
            width: 428,
            height: 71,
            child: Row(
              children: [
                Container(
                  width: 188,
                  height: 28,
                  margin: const EdgeInsets.only(
                      left: 37, right: 9, top: 21, bottom: 22),
                  child: const FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      "Verbal skills",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 27,
                  width: 31,
                  margin: const EdgeInsets.only(
                    left: 9,
                    top: 21,
                    bottom: 23,
                  ),
                  child: FittedBox(
                    fit: BoxFit.fill,
                    child: SvgPicture.asset(
                      'icons/Vector (2).svg',
                      height: 27,
                      width: 31,
                    ),
                  ),
                ),
                Container(
                  width: 15,
                  height: 23,
                  margin: const EdgeInsets.only(left: 14, top: 21, bottom: 22),
                  child: const FittedBox(
                    fit: BoxFit.fill,
                    child: Text(
                      "3",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xffECC055),
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 9,
                    top: 21,
                    bottom: 23,
                  ),
                  child: SvgPicture.asset(
                    'icons/Vector (1).svg',
                    height: 25,
                    width: 28,
                  ),
                ),
                Container(
                  width: 43,
                  height: 25,
                  margin: const EdgeInsets.only(left: 9, top: 21, bottom: 22),
                  child: const FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      "213",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff02A1FB),
                        fontFamily: 'Roboto',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 128,
            width: 211,
            margin: const EdgeInsets.only(left: 108, right: 109, top: 81),
            decoration: BoxDecoration(
              color: const Color(0x40C4C4C4),
              border: Border.all(color: const Color(0x20000000), width: 3.0),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -50,
                  left: 43,
                  right: 43,
                  child: Image.asset(
                    'images/Beep Beep Horse.png',
                    height: 98,
                    width: 124,
                  ),
                ),
                const Positioned(
                  top: 64,
                  left: 79,
                  right: 80,
                  child: FittedBox(
                    child: Text(
                      'Unit 1',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 101.5,
                  left: 33,
                  child: ClipRRect(
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(60),
                      left: Radius.circular(60),
                    ),
                    child: SizedBox(
                      height: 14,
                      width: 101,
                      child: LinearProgressIndicator(
                        value: 18 / 40,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Color(0xffECC055)),
                        backgroundColor: Color.fromARGB(255, 184, 184, 184),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 91.5,
                  left: 27,
                  child: SizedBox(
                    height: 31,
                    width: 27,
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: SvgPicture.asset(
                        'images/Vector.svg',
                      ),
                    ),
                  ),
                ),
                const Positioned(
                  top: 95,
                  left: 145,
                  right: 26,
                  child: FittedBox(
                    fit: BoxFit.none,
                    child: Text(
                      '3/40',
                      style: TextStyle(fontSize: 15, color: Color(0x50000000)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 64,
          ),
          Container(
            height: 140,
            width: 140,
            decoration: const ShapeDecoration(
              shape: CircleBorder(
                side: BorderSide(
                  color: Color(0xffC4C4C4),
                  width: 10.0,
                ),
              ),
              color: Color(0xffFBF5F2),
            ),
            child: Container(
              height: 110,
              width: 110,
              decoration: const ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage('images/Hands Pencil 1.png'),
                ),
                shape: CircleBorder(
                  side: BorderSide(
                    color: Color(0xffFBF5F2),
                    width: 4.0,
                  ),
                ),
                color: Color(0xff72BFC7),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 82,
                    left: 250,
                    right: 147,
                    child: SizedBox(
                      height: 31,
                      width: 27,
                      child: FittedBox(
                        fit: BoxFit.none,
                        child: SvgPicture.asset(
                          'images/Vector.svg',
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 90,
                    left: 248,
                    right: 147,
                    child: SizedBox(
                      height: 14,
                      width: 9,
                      child: FittedBox(
                          fit: BoxFit.none,
                          child: Text(
                            '1',
                            style:
                                TextStyle(fontFamily: 'Roboto', fontSize: 15),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 195, right: 191, top: 10),
            child: SizedBox(
              height: 42,
              width: 23,
              child: const FittedBox(
                fit: BoxFit.none,
                child: Text(
                  "Intro",
                  style: TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                ),
              ),
            ),
          ),
          Row(
            children: [
              Container(
                height: 140,
                width: 140,
                margin: const EdgeInsets.only(left: 65),
                decoration: const ShapeDecoration(
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Color(0xffC4C4C4),
                      width: 10.0,
                    ),
                  ),
                  color: Color(0xffFBF5F2),
                ),
                child: Container(
                  height: 110,
                  width: 110,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/Hands Book.png'),
                    ),
                    shape: CircleBorder(
                      side: BorderSide(
                        color: Color(0xffFBF5F2),
                        width: 4.0,
                      ),
                    ),
                    color: Color(0xff72BFC7),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: 76,
                        left: 99,
                        child: SizedBox(
                          height: 31,
                          width: 27,
                          child: FittedBox(
                            fit: BoxFit.none,
                            child: SvgPicture.asset(
                              'images/Vector.svg',
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 83,
                        left: 107,
                        child: SizedBox(
                          height: 14,
                          width: 9,
                          child: FittedBox(
                              fit: BoxFit.none,
                              child: Text(
                                '1',
                                style: TextStyle(
                                    fontFamily: 'Roboto', fontSize: 15),
                              )),
                        ),
                      ),
                      Positioned(
                        top: 125,
                        left: 45,
                        child: SizedBox(
                          height: 42,
                          width: 23,
                          child: const FittedBox(
                            fit: BoxFit.none,
                            child: Text(
                              "Phrases",
                              style:
                                  TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                height: 140,
                width: 140,
                decoration: const ShapeDecoration(
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Color(0xffC4C4C4),
                      width: 10.0,
                    ),
                  ),
                  color: Color(0xffFBF5F2),
                ),
                child: Container(
                  height: 110,
                  width: 110,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/Dayflow Bike.png'),
                    ),
                    shape: CircleBorder(
                      side: BorderSide(
                        color: Color(0xffFBF5F2),
                        width: 4.0,
                      ),
                    ),
                    color: Color(0xff72BFC7),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: 76,
                        left: 96,
                        child: SizedBox(
                          height: 31,
                          width: 27,
                          child: FittedBox(
                            fit: BoxFit.none,
                            child: SvgPicture.asset(
                              'images/Vector.svg',
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        top: 83,
                        left: 104,
                        child: SizedBox(
                          height: 14,
                          width: 9,
                          child: FittedBox(
                              fit: BoxFit.none,
                              child: Text(
                                '1',
                                style: TextStyle(
                                    fontFamily: 'Roboto', fontSize: 15),
                              )),
                        ),
                      ),
                      Positioned(
                        top: 120,
                        right: 43,
                        child: SizedBox(
                          height: 54,
                          width: 23,
                          child: const FittedBox(
                            fit: BoxFit.none,
                            child: Text(
                              "Travel",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 45,
          ),
          Center(
            child: Container(
              height: 140,
              width: 140,
              decoration: const ShapeDecoration(
                shape: CircleBorder(
                  side: BorderSide(
                    color: Color(0xffC4C4C4),
                    width: 10.0,
                  ),
                ),
                color: Color(0xffFBF5F2),
              ),
              child: Container(
                height: 110,
                width: 110,
                decoration: const ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage('icons/Vector (5).png'),
                  ),
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Color(0xffFBF5F2),
                      width: 4.0,
                    ),
                  ),
                  color: Color(0xff72BFC7),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 76,
                      left: 96,
                      child: SizedBox(
                        height: 31,
                        width: 27,
                        child: FittedBox(
                          fit: BoxFit.none,
                          child: SvgPicture.asset(
                            'images/Vector.svg',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 38,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 65),
                height: 140,
                width: 140,
                decoration: const ShapeDecoration(
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Color(0xffC4C4C4),
                      width: 10.0,
                    ),
                  ),
                  color: Color(0xffFBF5F2),
                ),
                child: Container(
                  height: 110,
                  width: 110,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('icons/Vector (5).png'),
                    ),
                    shape: CircleBorder(
                      side: BorderSide(
                        color: Color(0xffFBF5F2),
                        width: 4.0,
                      ),
                    ),
                    color: Color(0xff72BFC7),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: 76,
                        left: 96,
                        child: SizedBox(
                          height: 31,
                          width: 27,
                          child: FittedBox(
                            fit: BoxFit.none,
                            child: SvgPicture.asset(
                              'images/Vector.svg',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 17,
              ),
              Container(
                height: 140,
                width: 140,
                decoration: const ShapeDecoration(
                  shape: CircleBorder(
                    side: BorderSide(
                      color: Color(0xffC4C4C4),
                      width: 10.0,
                    ),
                  ),
                  color: Color(0xffFBF5F2),
                ),
                child: Container(
                  height: 110,
                  width: 110,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage('icons/Vector (5).png'),
                    ),
                    shape: CircleBorder(
                      side: BorderSide(
                        color: Color(0xffFBF5F2),
                        width: 4.0,
                      ),
                    ),
                    color: Color(0xff72BFC7),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        top: 76,
                        left: 96,
                        child: SizedBox(
                          height: 31,
                          width: 27,
                          child: FittedBox(
                            fit: BoxFit.none,
                            child: SvgPicture.asset(
                              'images/Vector.svg',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
