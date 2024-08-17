import 'package:flutter/material.dart';

class VerbalSkillsScreen extends StatelessWidget {
  const VerbalSkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 80,
          ),
          Container(
              width: double.infinity,
              height: 80,
              color: const Color(0xffE5E5E5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Verbal skills",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  Image.asset(
                    "assets/icons/icon1.png",
                    width: 31,
                    height: 27,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      "3",
                      style: TextStyle(color: Color(0xffECC055), fontSize: 25),
                    ),
                  ),
                  Image.asset(
                    "assets/icons/icon12.png",
                    width: 28,
                    height: 25,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 8),
                    child: Text(
                      "213",
                      style: TextStyle(color: Color(0xff02A1FB), fontSize: 25),
                    ),
                  )
                ],
              )),
          SizedBox(
            height: 200,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: 128,
                  width: 211,
                  decoration: BoxDecoration(
                      border: Border.all(width: 3, color: Colors.black45),
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffE9E8E8)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const Text('Unit 1',
                            style: TextStyle(
                              fontSize: 20,
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/icon1.png",
                              width: 31,
                              height: 27,
                            ),
                            Container(
                              width: 100,
                              padding: const EdgeInsets.only(top: 10),
                              alignment: Alignment.bottomCenter,
                              child: const LinearProgressIndicator(
                                backgroundColor: Color(0xffC4C4C4),
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Color(0xffECC055)),
                                value: 3 / 40,
                                minHeight: 16,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                    topLeft: Radius.elliptical(1, 2)),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "3/40",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                    fontSize: 15),
                              ),
                            )
                          ],
                        )
                      ]),
                ),
                Positioned(
                  top: 20,
                  child: Image.asset(
                    "assets/image8.png",
                    fit: BoxFit.cover,
                    height: 100,
                    width: 125,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 120,
                height: 120,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xff72BFC7),
                    border: Border.all(
                        width: 10,
                        color: const Color(
                          0xffC4C4C4,
                        ),
                        strokeAlign: 2)),
                child: Image.asset("assets/image9.png"),
              ),
              Container(
                padding: const EdgeInsets.only(left: 120, top: 50),
                child: Image.asset(
                  "assets/icons/icon1.png",
                ),
              ),
              const Positioned(bottom: 20, right: 12, child: Text("1"))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Intro",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xff72BFC7),
                            border: Border.all(
                                width: 10,
                                color: const Color(
                                  0xffC4C4C4,
                                ),
                                strokeAlign: 2)),
                        child: Image.asset("assets/image10.png"),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 120, top: 50),
                        child: Image.asset(
                          "assets/icons/icon1.png",
                        ),
                      ),
                      const Positioned(bottom: 20, right: 12, child: Text("1")),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Travel",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xff72BFC7),
                            border: Border.all(
                                width: 10,
                                color: const Color(
                                  0xffC4C4C4,
                                ),
                                strokeAlign: 2)),
                        child: Image.asset("assets/image11.png"),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 120, top: 50),
                        child: Image.asset(
                          "assets/icons/icon1.png",
                        ),
                      ),
                      const Positioned(bottom: 20, right: 12, child: Text("1"))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Phrases",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 120,
                height: 120,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color(0xff72BFC7),
                    border: Border.all(
                        width: 10,
                        color: const Color(
                          0xffC4C4C4,
                        ),
                        strokeAlign: 2)),
                child: Image.asset(
                  "assets/icons/icon2.png",
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 120, top: 50),
                child: Image.asset(
                  "assets/icons/icon1.png",
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xff72BFC7),
                            border: Border.all(
                                width: 10,
                                color: const Color(
                                  0xffC4C4C4,
                                ),
                                strokeAlign: 2)),
                        child: Image.asset("assets/icons/icon2.png"),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 120, top: 50),
                        child: Image.asset(
                          "assets/icons/icon1.png",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Column(
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 120,
                        height: 120,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: const Color(0xff72BFC7),
                            border: Border.all(
                                width: 10,
                                color: const Color(
                                  0xffC4C4C4,
                                ),
                                strokeAlign: 2)),
                        child: Image.asset("assets/icons/icon2.png"),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 120, top: 50),
                        child: Image.asset(
                          "assets/icons/icon1.png",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
