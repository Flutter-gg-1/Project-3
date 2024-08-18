import 'package:flutter/material.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 50,
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 71,
            color: const Color(0xffE9E8E8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Row(
                  children: [
                    Text('Verbal skills',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Roboto',
                            color: Color(0xff000000)))
                  ],
                ),
                Row(
                  children: [
                    Image.asset("assets/Vector.png"),
                    const Text(
                      '  3',
                      style: TextStyle(color: Color(0xffEB9F4A), fontSize: 25),
                    )
                  ],
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.diamond,
                      color: Color(0xff02A1FB),
                      size: 30,
                    ),
                    Text(
                      '213',
                      style: TextStyle(
                        color: Color(0xff02A1FB),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 58,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(clipBehavior: Clip.none, children: [
                Container(
                  height: 128,
                  width: 211,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffE9E8E8),
                      border:
                          Border.all(width: 2, color: const Color(0xffbababa))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'Unit 1',
                        style: TextStyle(fontSize: 20),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 14, bottom: 10),
                            child: Image.asset("assets/Vector.png"),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              left: 4,
                            ),
                            width: 100,
                            height: 14,
                            child: const ClipRRect(
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(60),
                              ),
                              child: LinearProgressIndicator(
                                value: 0.3,
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Color(0xffECC055)),
                                backgroundColor:
                                    Color.fromARGB(255, 184, 184, 184),
                              ),
                            ),
                          ),
                          const Text(
                            '   3/40',
                            style: TextStyle(
                                color: Color.fromARGB(255, 129, 129, 129)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -50,
                  left: 45,
                  child: Image.asset('assets/Beep Beep Horse.png'),
                )
              ])
            ],
          ),
          const SizedBox(
            height: 64,
          ),
          //circle
          Column(
            children: [
              //badge widget used for notifications
              Badge(
                alignment: AlignmentGeometry.lerp(
                    Alignment.centerLeft, Alignment.bottomRight, 0.8),
                largeSize: 30,
                smallSize: 10,
                backgroundColor: Colors.transparent,
                label: Stack(children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/Vector.png",
                        width: 31,
                        height: 27,
                      ),
                    ],
                  ),
                  const Positioned(
                    bottom: 3,
                    left: 10,
                    child: Text(
                      '1',
                      style: TextStyle(fontSize: 14, color: Colors.black),
                    ),
                  )
                ]),
                child: Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: const Color(0xffc4c4c4), width: 10)),
                  child: Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xff72BFC7)),
                    margin: const EdgeInsets.all(5),
                    child: Image.asset('assets/Hands Pencil 1.png'),
                  ),
                ),
              )
            ],
          ),
          const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                'Intro',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 17),
                child: Column(
                  children: [
                    //badge widget used for notifications
                    Badge(
                      alignment: AlignmentGeometry.lerp(
                          Alignment.centerLeft, Alignment.bottomRight, 0.8),
                      largeSize: 30,
                      smallSize: 10,
                      backgroundColor: Colors.transparent,
                      label: Stack(children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/Vector.png",
                              width: 31,
                              height: 27,
                            ),
                          ],
                        ),
                        const Positioned(
                          bottom: 3,
                          left: 10,
                          child: Text(
                            '1',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                        )
                      ]),
                      child: Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: const Color(0xffc4c4c4), width: 10)),
                        child: Container(
                          height: 110,
                          width: 110,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: const Color(0xff72BFC7)),
                          margin: const EdgeInsets.all(5),
                          child: Image.asset('assets/Hands Book.png'),
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Phrases',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  //badge widget used for notifications
                  Badge(
                    alignment: AlignmentGeometry.lerp(
                        Alignment.centerLeft, Alignment.bottomRight, 0.8),
                    largeSize: 30,
                    smallSize: 10,
                    backgroundColor: Colors.transparent,
                    label: Stack(children: [
                      Column(
                        children: [
                          Image.asset(
                            "assets/Vector.png",
                            width: 31,
                            height: 27,
                          ),
                        ],
                      ),
                      const Positioned(
                        bottom: 3,
                        left: 10,
                        child: Text(
                          '1',
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                      )
                    ]),
                    child: Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              color: const Color(0xffc4c4c4), width: 10)),
                      child: Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xff72BFC7)),
                        margin: const EdgeInsets.all(5),
                        child: Image.asset('assets/Dayflow Bike.png'),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'Travel',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              //badge widget used for notifications
              Badge(
                alignment: AlignmentGeometry.lerp(
                    Alignment.centerLeft, Alignment.bottomRight, 0.8),
                largeSize: 30,
                smallSize: 10,
                backgroundColor: Colors.transparent,
                label: Stack(children: [
                  Column(
                    children: [
                      Image.asset(
                        "assets/Vector.png",
                        width: 31,
                        height: 27,
                      ),
                    ],
                  ),
                ]),
                child: Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                          color: const Color(0xffc4c4c4), width: 10)),
                  child: Container(
                    height: 110,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xff72BFC7)),
                    margin: const EdgeInsets.all(5),
                    child: const Icon(
                      Icons.lock,
                      size: 50,
                      color: Color.fromARGB(255, 121, 121, 121),
                    ),
                  ),
                ),
              )
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 17),
                child: Column(
                  children: [
                    //badge widget used for notifications
                    Badge(
                      alignment: AlignmentGeometry.lerp(
                          Alignment.centerLeft, Alignment.bottomRight, 0.8),
                      largeSize: 30,
                      smallSize: 10,
                      backgroundColor: Colors.transparent,
                      label: Stack(children: [
                        Column(
                          children: [
                            Image.asset(
                              "assets/Vector.png",
                              width: 31,
                              height: 27,
                            ),
                          ],
                        ),
                      ]),
                      child: Container(
                        height: 140,
                        width: 140,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: const Color(0xffc4c4c4), width: 10)),
                        child: Container(
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color(0xff72BFC7)),
                            margin: const EdgeInsets.all(5),
                            child: const Icon(
                              Icons.lock,
                              size: 50,
                              color: Color.fromARGB(255, 121, 121, 121),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  //badge widget used for notifications
                  Badge(
                    alignment: AlignmentGeometry.lerp(
                        Alignment.centerLeft, Alignment.bottomRight, 0.8),
                    largeSize: 30,
                    smallSize: 10,
                    backgroundColor: Colors.transparent,
                    label: Stack(children: [
                      Column(
                        children: [
                          Image.asset(
                            "assets/Vector.png",
                            width: 31,
                            height: 27,
                          ),
                        ],
                      ),
                    ]),
                    child: Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                              color: const Color(0xffc4c4c4), width: 10)),
                      child: Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color(0xff72BFC7)),
                        margin: const EdgeInsets.all(5),
                        child: const Icon(
                          Icons.lock,
                          size: 50,
                          color: Color.fromARGB(255, 121, 121, 121),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
        ]),
      ),
    ));
  }
}
