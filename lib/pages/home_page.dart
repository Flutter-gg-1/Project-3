import 'package:educational_kids_project/pages/verbal_skills.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.grading_outlined,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: ""),
          ]),
      body: ListView(
        children: [
          const SizedBox(
            height: 70,
          ),
          Container(
            color: const Color(0xffE5E5E5),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Image.asset('lib/assets/home/flame.png'),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "3",
                      style: TextStyle(fontSize: 25, color: Color(0xffEB9F4A)),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset('lib/assets/home/box.png'),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "1432 XP",
                      style: TextStyle(fontSize: 25, color: Color(0xff338F9B)),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset('lib/assets/home/heart.png'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Logical reasoning",
                          style: TextStyle(fontSize: 27),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Image.asset("lib/assets/home/crown.png"),
                        const Text(
                          "18/40",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 165,
                          height: 200,
                          decoration: BoxDecoration(
                              color: const Color(0xffC4C4C4).withOpacity(0.4),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                const Text("Unit 1"),
                                SizedBox(
                                  height: 130,
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    GFProgressBar(
                                      percentage: 18 / 40,
                                      backgroundColor: Color(0xffC4C4C4),
                                      progressBarColor: Color(0xffECC055),
                                      lineHeight: 15,
                                    ),
                                    Positioned(
                                      top: -18,
                                      left: -5,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Image.asset(
                                          'lib/assets/home/crown.png',
                                          height: 40,
                                          width: 40,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 165,
                          height: 200,
                          decoration: BoxDecoration(
                              color: const Color(0xffC4C4C4).withOpacity(0.4),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("lib/assets/home/lock.png"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Artistic thinking",
                          style: TextStyle(fontSize: 27),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Image.asset("lib/assets/home/crown.png"),
                        const Text(
                          "35/40",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          width: 165,
                          height: 200,
                          decoration: BoxDecoration(
                              color: const Color(0xffC4C4C4).withOpacity(0.4),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Text("Unit 1"),
                                SizedBox(
                                  height: 130,
                                ),
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    GFProgressBar(
                                      percentage: 35 / 40,
                                      backgroundColor: Color(0xffC4C4C4),
                                      progressBarColor: Color(0xffECC055),
                                      lineHeight: 15,
                                    ),
                                    Positioned(
                                      top: -18,
                                      left: -5,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Image.asset(
                                          'lib/assets/home/crown.png',
                                          height: 40,
                                          width: 40,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 165,
                          height: 200,
                          decoration: BoxDecoration(
                              color: const Color(0xffC4C4C4).withOpacity(0.4),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("lib/assets/home/lock.png"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Verbal skills",
                          style: TextStyle(fontSize: 27),
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        Image.asset("lib/assets/home/crown.png"),
                        const Text(
                          "3/40",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const VerbalSkills();
                            }));
                          },
                          child: Container(
                            width: 165,
                            height: 200,
                            decoration: BoxDecoration(
                                color: const Color(0xffC4C4C4).withOpacity(0.4),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                children: [
                                  Text("Unit 1"),
                                  SizedBox(
                                    height: 130,
                                  ),
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      GFProgressBar(
                                        percentage: 9 / 40,
                                        backgroundColor: Color(0xffC4C4C4),
                                        progressBarColor: Color(0xffECC055),
                                        lineHeight: 15,
                                      ),
                                      Positioned(
                                        top: -18,
                                        left: -5,
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Image.asset(
                                            'lib/assets/home/crown.png',
                                            height: 40,
                                            width: 40,
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
                        Container(
                          width: 165,
                          height: 200,
                          decoration: BoxDecoration(
                              color: const Color(0xffC4C4C4).withOpacity(0.4),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("lib/assets/home/lock.png"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
