import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'verbal_skills.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      backgroundColor: const Color(0xffFBF5F2),
      body: ListView(
        children: [
          Container(
              color: const Color(0xeffE9E8E8),
              width: 428,
              height: 71,
              child: Image.asset("icons/Footer.png")),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 25, top: 53),
                child: const Text(
                  "Logical reasoning",
                  style: TextStyle(fontSize: 31),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(top: 58, left: 16, bottom: 18),
                child: Image.asset('icons/Vector (4).png'),
              ),
              Container(
                margin:
                    const EdgeInsets.only(top: 62, right: 26, bottom: 18),
                child: Image.asset('icons/Crowns earned.png'),
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: 227,
                width: 179,
                margin: const EdgeInsets.only(left: 24),
                decoration: BoxDecoration(
                  color: const Color(0x40C4C4C4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 194,
                      left: 12,
                      right: 18,
                      bottom: 19,
                      child: Container(
                        margin: const EdgeInsets.only(left: 20),
                        width: double.infinity,
                        child: const ClipRRect(
                          borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(60),
                            left: Radius.circular(60),
                          ),
                          child: LinearProgressIndicator(
                            borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(60),
                            ),
                            value: 18 / 40,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xffECC055)),
                            backgroundColor:
                                Color.fromARGB(255, 184, 184, 184),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      
                      padding: const EdgeInsets.only(
                        left: 12,
                        right: 124,
                        top: 182,
                      ),
                      child: SvgPicture.asset(
                        'images/Vector.svg',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                          bottom: 175, top: 17, left: 51, right: 50),
                      child: FittedBox(
                        child: Text(
                          'Unit 1',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 179,
                height: 227,
                margin: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: const Color(0x40C4C4C4),
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    alignment: Alignment.center,
                    image: AssetImage('icons/Vector (5).png'),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 25, top: 35, bottom: 9),
                child: const Text(
                  "Artistic thinking",
                  style: TextStyle(fontSize: 31),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 40, bottom: 18, top: 40),
                child: Image.asset('icons/Vector (4).png'),
              ),
              Container(
                margin:
                    const EdgeInsets.only(top: 44, right: 26, bottom: 17),
                child: Image.asset('icons/Crowns earned (2).png'),
              )
            ],
          ),
          Row(
            children: [
              Container(
                height: 227,
                width: 179,
                margin: const EdgeInsets.only(left: 24),
                decoration: BoxDecoration(
                  color: const Color(0x40C4C4C4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 194,
                      left: 12,
                      right: 18,
                      bottom: 19,
                      child: Container(
                        margin: const EdgeInsets.only(left: 20),
                        width: double.infinity,
                        child: const ClipRRect(
                          borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(60),
                            left: Radius.circular(60),
                          ),
                          child: LinearProgressIndicator(
                            borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(60),
                            ),
                            value: 18 / 40,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xffECC055)),
                            backgroundColor:
                                Color.fromARGB(255, 184, 184, 184),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 12,
                        right: 124,
                        top: 182,
                      ),
                      child: SvgPicture.asset(
                        'images/Vector.svg',
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                          bottom: 175, top: 17, left: 51, right: 50),
                      child: FittedBox(
                        child: Text(
                          'Unit 1',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 179,
                height: 227,
                margin: const EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: const Color(0x40C4C4C4),
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    alignment: Alignment.center,
                    image: AssetImage('icons/Vector (5).png'),
                  ),
                ),
              )
            ],
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 25, top: 53),
                child: const Text(
                  "Verbal skills",
                  style: TextStyle(fontSize: 31),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(top: 40, left: 84, bottom: 20),
                child: Image.asset('icons/Vector (4).png'),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 44, right: 26, bottom: 8, left: 24),
                child: Image.asset('icons/Crowns earned (3).png'),
              )
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const VerbalSkills()),
              );
            },
            child: Row(
              children: [
                Container(
                  height: 227,
                  width: 179,
                  margin: const EdgeInsets.only(left: 24),
                  decoration: BoxDecoration(
                    color: const Color(0x40C4C4C4),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 194,
                        left: 12,
                        right: 18,
                        bottom: 19,
                        child: Container(
                          margin: const EdgeInsets.only(left: 20),
                          width: double.infinity,
                          child: const ClipRRect(
                            borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(30),
                              left: Radius.circular(30),
                            ),
                            child: LinearProgressIndicator(
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(60),
                              ),
                              value: 18 / 40,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  Color(0xffECC055)),
                              backgroundColor:
                                  Color.fromARGB(255, 184, 184, 184),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 12,
                          right: 124,
                          top: 182,
                        ),
                        child: SvgPicture.asset(
                          'images/Vector.svg',
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                            bottom: 175, top: 17, left: 51, right: 50),
                        child: FittedBox(
                          child: Text(
                            'Unit 1',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 179,
                  height: 227,
                  margin: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    color: const Color(0x40C4C4C4),
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      alignment: Alignment.center,
                      image: AssetImage('icons/Vector (5).png'),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
