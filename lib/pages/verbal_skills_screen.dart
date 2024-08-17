import 'package:flutter/material.dart';

class VerbalSkills extends StatelessWidget {
  const VerbalSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade300,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              "Verbal skills",
              style: TextStyle(fontSize: 30),
            ),
            Row(
              children: [
                Image.asset("assets/Vector.png"),
                const SizedBox(
                  width: 14,
                ),
                const Text(
                  "3",
                  style: TextStyle(color: Color(0xffECC055), fontSize: 25),
                )
              ],
            ),
            const Row(
              children: [
                Icon(
                  Icons.diamond,
                  color: Color(0xff02A1FB),
                  size: 35,
                ),
                Text(
                  "213",
                  style: TextStyle(color: Color(0xff02A1FB), fontSize: 25),
                )
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 211,
                    height: 128,
                    margin: const EdgeInsets.only(
                        top: 25), // Adjust margin as needed
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color(0xffbababa),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffE9E8E8),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 61),
                        const Text(
                          "Unit 1",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Roboto"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Image.asset(
                                  "assets/Vector.png",
                                  width: 23,
                                  height: 23,
                                ),
                              ),
                              const Expanded(
                                child: LinearProgressIndicator(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  minHeight: 13,
                                  value: 0.1,
                                  backgroundColor: Color(0xffE5E1E0),
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      Color(0xfff2c247)),
                                ),
                              ),
                              const SizedBox(
                                width: 11,
                              ),
                              const Text(
                                "3/40",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 4),
                      ],
                    ),
                  ),
                  Positioned(
                    top: -25,
                    left: 45,
                    child: Image.asset("assets/BeepBeepHorse.png"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            Column(
              children: [
                Badge(
                  smallSize: 10,
                  largeSize: 30,
                  offset: const Offset(-10, -15),
                  alignment: AlignmentGeometry.lerp(
                      Alignment.bottomRight, Alignment.centerRight, 0),
                  backgroundColor: const Color(0xffFBF5F2),
                  label: Stack(children: [
                    Image.asset(
                      colorBlendMode: BlendMode.dstOver,
                      "assets/Vector.png",
                      width: 25,
                      height: 25,
                    ),
                    const Positioned(
                      right: 8,
                      top: 4,
                      child: Text(
                        '1',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ]),
                  child: Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border:
                          Border.all(color: const Color(0xffc4c4c4), width: 10),
                      color: const Color(0xffFBF5F2),
                    ),
                    child: Container(
                      width: 110,
                      height: 110,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xff72BFC7)),
                      child:
                          Center(child: Image.asset("assets/HandsPencil1.png")),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Intro",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55),
              child: Row(
                children: [
                  Column(
                    children: [
                      Badge(
                        smallSize: 10,
                        largeSize: 30,
                        offset: const Offset(-10, -15),
                        alignment: AlignmentGeometry.lerp(
                            Alignment.bottomRight, Alignment.centerRight, 0),
                        backgroundColor: const Color(0xffFBF5F2),
                        label: Stack(children: [
                          Image.asset(
                            colorBlendMode: BlendMode.dstOver,
                            "assets/Vector.png",
                            width: 25,
                            height: 25,
                          ),
                          const Positioned(
                            right: 8,
                            top: 4,
                            child: Text(
                              '1',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ]),
                        child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: const Color(0xffc4c4c4), width: 10),
                            color: const Color(0xffFBF5F2),
                          ),
                          child: Container(
                            width: 110,
                            height: 110,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color(0xff72BFC7)),
                            child: Center(
                                child: Image.asset("assets/HandsBook.png")),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Phrases",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  Column(
                    children: [
                      Badge(
                        smallSize: 10,
                        largeSize: 30,
                        offset: const Offset(-10, -15),
                        alignment: AlignmentGeometry.lerp(
                            Alignment.bottomRight, Alignment.centerRight, 0),
                        backgroundColor: const Color(0xffFBF5F2),
                        label: Stack(children: [
                          Image.asset(
                            colorBlendMode: BlendMode.dstOver,
                            "assets/Vector.png",
                            width: 25,
                            height: 25,
                          ),
                          const Positioned(
                            right: 8,
                            top: 4,
                            child: Text(
                              '1',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ]),
                        child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: const Color(0xffc4c4c4), width: 10),
                            color: const Color(0xffFBF5F2),
                          ),
                          child: Container(
                            width: 110,
                            height: 110,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color(0xff72BFC7)),
                            child: Center(
                                child: Image.asset("assets/DayflowBike.png")),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Travel",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Badge(
                  smallSize: 10,
                  largeSize: 30,
                  offset: const Offset(-10, -15),
                  alignment: AlignmentGeometry.lerp(
                      Alignment.bottomRight, Alignment.centerRight, 0),
                  backgroundColor: const Color(0xffFBF5F2),
                  label: Image.asset(
                    colorBlendMode: BlendMode.dstOver,
                    "assets/Vector.png",
                    width: 25,
                    height: 25,
                  ),
                  child: Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      border:
                          Border.all(color: const Color(0xffc4c4c4), width: 10),
                      color: const Color(0xffFBF5F2),
                    ),
                    child: Container(
                      width: 110,
                      height: 110,
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xff72BFC7)),
                      child: const Center(
                          child: Icon(
                        Icons.lock,
                        size: 36,
                        color: Colors.black45,
                      )),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55),
              child: Row(
                children: [
                  Column(
                    children: [
                      Badge(
                        smallSize: 10,
                        largeSize: 30,
                        offset: const Offset(-10, -15),
                        alignment: AlignmentGeometry.lerp(
                            Alignment.bottomRight, Alignment.centerRight, 0),
                        backgroundColor: const Color(0xffFBF5F2),
                        label: Image.asset(
                          colorBlendMode: BlendMode.dstOver,
                          "assets/Vector.png",
                          width: 25,
                          height: 25,
                        ),
                        child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: const Color(0xffc4c4c4), width: 10),
                            color: const Color(0xffFBF5F2),
                          ),
                          child: Container(
                            width: 110,
                            height: 110,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color(0xff72BFC7)),
                            child: const Center(
                                child: Icon(
                              Icons.lock,
                              size: 36,
                              color: Colors.black45,
                            )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  Column(
                    children: [
                      Badge(
                        smallSize: 10,
                        largeSize: 30,
                        offset: const Offset(-10, -15),
                        alignment: AlignmentGeometry.lerp(
                            Alignment.bottomRight, Alignment.centerRight, 0),
                        backgroundColor: const Color(0xffFBF5F2),
                        label: Image.asset(
                          colorBlendMode: BlendMode.dstOver,
                          "assets/Vector.png",
                          width: 25,
                          height: 25,
                        ),
                        child: Container(
                          height: 140,
                          width: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                                color: const Color(0xffc4c4c4), width: 10),
                            color: const Color(0xffFBF5F2),
                          ),
                          child: Container(
                            width: 110,
                            height: 110,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: const Color(0xff72BFC7)),
                            child: const Center(
                                child: Icon(
                              Icons.lock,
                              size: 36,
                              color: Colors.black45,
                            )),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
