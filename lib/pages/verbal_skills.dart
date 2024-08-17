import 'package:flutter/material.dart';

class VerbalSkills extends StatelessWidget {
  const VerbalSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        const SizedBox(
          height: 70,
        ),
        Container(
          padding: const EdgeInsets.all(20),
          color: const Color(0xffE5E5E5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "Verbal skills",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Row(
                children: [
                  Image.asset('lib/assets/home/crown.png'),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "3",
                    style: TextStyle(fontSize: 25, color: Color(0xffECC055)),
                  )
                ],
              ),
              Row(
                children: [
                  Image.asset('lib/assets/verbal_skills/diamond.png'),
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    "213",
                    style: TextStyle(fontSize: 25, color: Color(0xff02A1FB)),
                  )
                ],
              ),
            ],
          ),
        ),
        Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                        color: const Color(0xffE9E8E8),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all()),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text("Unit 1"),
                        Image.asset("lib/assets/verbal_skills/bar.png"),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: -50,
                      right: 40,
                      child: Image.asset(
                          "lib/assets/verbal_skills/Beep Beep Horse.png"))
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 125,
                            width: 125,
                            decoration: BoxDecoration(
                                color: const Color(0xffC4C4C4),
                                borderRadius: BorderRadius.circular(60)),
                          ),
                          Positioned(
                            top: 7.5,
                            left: 7.5,
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(60)),
                            ),
                          ),
                          Positioned(
                            top: 12.5,
                            left: 12.5,
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: const Color(0xff72BFC7),
                                  borderRadius: BorderRadius.circular(60)),
                              child: Image.asset(
                                  "lib/assets/verbal_skills/pencil.png"),
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            right: 0,
                            child: Image.asset(
                                "lib/assets/verbal_skills/crown.png"),
                          ),
                          const Positioned(bottom: 15, right: 12, child: Text("1"))
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Intro",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 125,
                            width: 125,
                            decoration: BoxDecoration(
                                color: const Color(0xffC4C4C4),
                                borderRadius: BorderRadius.circular(60)),
                          ),
                          Positioned(
                            top: 7.5,
                            left: 7.5,
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(60)),
                            ),
                          ),
                          Positioned(
                            top: 12.5,
                            left: 12.5,
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: const Color(0xff72BFC7),
                                  borderRadius: BorderRadius.circular(60)),
                              child: Image.asset(
                                  "lib/assets/verbal_skills/book.png"),
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            right: 0,
                            child: Image.asset(
                                "lib/assets/verbal_skills/crown.png"),
                          ),
                          const Positioned(bottom: 15, right: 12, child: Text("1"))
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Phrases",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 125,
                            width: 125,
                            decoration: BoxDecoration(
                                color: const Color(0xffC4C4C4),
                                borderRadius: BorderRadius.circular(60)),
                          ),
                          Positioned(
                            top: 7.5,
                            left: 7.5,
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(60)),
                            ),
                          ),
                          Positioned(
                            top: 12.5,
                            left: 12.5,
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: const Color(0xff72BFC7),
                                  borderRadius: BorderRadius.circular(60)),
                              child: Image.asset(
                                  "lib/assets/verbal_skills/bike.png"),
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            right: 0,
                            child: Image.asset(
                                "lib/assets/verbal_skills/crown.png"),
                          ),
                          const Positioned(bottom: 15, right: 12, child: Text("1"))
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text(
                        "Travel",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 125,
                            width: 125,
                            decoration: BoxDecoration(
                                color: const Color(0xffC4C4C4),
                                borderRadius: BorderRadius.circular(60)),
                          ),
                          Positioned(
                            top: 7.5,
                            left: 7.5,
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(60)),
                            ),
                          ),
                          Positioned(
                            top: 12.5,
                            left: 12.5,
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: const Color(0xff72BFC7),
                                  borderRadius: BorderRadius.circular(60)),
                              child: Image.asset("lib/assets/home/lock.png"),
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            right: 0,
                            child: Image.asset(
                                "lib/assets/verbal_skills/crown.png"),
                          ),
                          const Positioned(bottom: 15, right: 12, child: Text("1"))
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 125,
                            width: 125,
                            decoration: BoxDecoration(
                                color: const Color(0xffC4C4C4),
                                borderRadius: BorderRadius.circular(60)),
                          ),
                          Positioned(
                            top: 7.5,
                            left: 7.5,
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(60)),
                            ),
                          ),
                          Positioned(
                            top: 12.5,
                            left: 12.5,
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: const Color(0xff72BFC7),
                                  borderRadius: BorderRadius.circular(60)),
                              child: Image.asset("lib/assets/home/lock.png"),
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            right: 0,
                            child: Image.asset(
                                "lib/assets/verbal_skills/crown.png"),
                          ),
                          const Positioned(bottom: 15, right: 12, child: Text("1"))
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 125,
                            width: 125,
                            decoration: BoxDecoration(
                                color: const Color(0xffC4C4C4),
                                borderRadius: BorderRadius.circular(60)),
                          ),
                          Positioned(
                            top: 7.5,
                            left: 7.5,
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(60)),
                            ),
                          ),
                          Positioned(
                            top: 12.5,
                            left: 12.5,
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: const Color(0xff72BFC7),
                                  borderRadius: BorderRadius.circular(60)),
                              child: Image.asset("lib/assets/home/lock.png"),
                            ),
                          ),
                          Positioned(
                            bottom: 15,
                            right: 0,
                            child: Image.asset(
                                "lib/assets/verbal_skills/crown.png"),
                          ),
                          const Positioned(bottom: 15, right: 12, child: Text("1"))
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
