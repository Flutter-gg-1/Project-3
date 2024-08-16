import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  Color selectedColor = Color(0xff41AC78);
  Color unSelectedColor = Colors.black.withOpacity(50);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffE5E5E5).withOpacity(0.8),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        selectedItemColor: selectedColor,
        useLegacyColorScheme: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.crisis_alert), label: "My Goals"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2), label: "My Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        onTap: (int newIndex) {
          setState(() {
            currentIndex = newIndex;
            if (currentIndex == 1) {
              selectedColor = Color(0xffDC3F00);
            } else if (currentIndex == 2) {
              selectedColor = Color(0xffAB70DF);
            } else {
              selectedColor = Color(0xff41AC78);
            }
          });
        },
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Container(
              width: size.width,
              height: size.height * 0.10,
              color: const Color(0xffE5E5E5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/icon3.png"),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "3",
                      style: TextStyle(fontSize: 16, color: Color(0xffEB9F4A)),
                    ),
                  ),
                  Image.asset("assets/icons/icon4.png"),
                  const Text(
                    "1432 XP",
                    style: TextStyle(fontSize: 16, color: Color(0xff338F9B)),
                  ),
                  Image.asset("assets/icons/icon5.png"),
                  Image.asset("assets/icons/icon6.png")
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const Text(
                  " Logical reasoning",
                  style: TextStyle(fontSize: 35),
                ),
                const SizedBox(
                  width: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/icon1.png",
                      width: 25,
                      height: 25,
                    ),
                    Text(
                      " 35/40",
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ],
                )
              ],
            ),
            Container(
              height: 230,
              width: size.width,
              padding: const EdgeInsets.all(8),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 180,
                    height: 230,
                    decoration: BoxDecoration(
                        color: const Color(0xffC4C4C4).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Unit 1",
                          style: TextStyle(fontSize: 35),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Image.asset(
                                "assets/icons/icon1.png",
                                width: 31,
                                height: 27,
                              ),
                            ),
                            Container(
                              width: 130,
                              padding: EdgeInsets.only(top: 10),
                              alignment: Alignment.bottomCenter,
                              child: const LinearProgressIndicator(
                                backgroundColor: Color(0xffC4C4C4),
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Color(0xffECC055)),
                                value: 0.4,
                                minHeight: 14,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 180,
                    height: 230,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color(0xffC4C4C4).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("assets/icons/icon2.png"),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 180,
                    height: 230,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color(0xffC4C4C4).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("assets/icons/icon2.png"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  " Artistic thinking",
                  style: TextStyle(fontSize: 35),
                ),
                const SizedBox(
                  width: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/icon1.png",
                      width: 25,
                      height: 25,
                    ),
                    Text(
                      " 35/40    ",
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ],
                )
              ],
            ),
            Container(
              height: 230,
              width: size.width,
              padding: const EdgeInsets.all(8),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 180,
                    height: 230,
                    decoration: BoxDecoration(
                        color: const Color(0xffC4C4C4).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Unit 1",
                          style: TextStyle(fontSize: 35),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Image.asset(
                                "assets/icons/icon1.png",
                                width: 31,
                                height: 27,
                              ),
                            ),
                            Container(
                              width: 130,
                              padding: EdgeInsets.only(top: 10),
                              alignment: Alignment.bottomCenter,
                              child: const LinearProgressIndicator(
                                backgroundColor: Color(0xffC4C4C4),
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Color(0xffECC055)),
                                value: 0.8,
                                minHeight: 14,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 180,
                    height: 230,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color(0xffC4C4C4).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("assets/icons/icon2.png"),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 180,
                    height: 230,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color(0xffC4C4C4).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("assets/icons/icon2.png"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  " Verbal skills",
                  style: TextStyle(fontSize: 35),
                ),
                const SizedBox(
                  width: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/icons/icon1.png",
                      width: 25,
                      height: 25,
                    ),
                    Text(
                      " 3/40    ",
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ),
                  ],
                )
              ],
            ),
            Container(
              height: 230,
              width: size.width,
              padding: const EdgeInsets.all(8),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 180,
                    height: 230,
                    decoration: BoxDecoration(
                        color: const Color(0xffC4C4C4).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Unit 1",
                          style: TextStyle(fontSize: 35),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Image.asset(
                                "assets/icons/icon1.png",
                                width: 31,
                                height: 27,
                              ),
                            ),
                            Container(
                              width: 130,
                              padding: EdgeInsets.only(top: 10),
                              alignment: Alignment.bottomCenter,
                              child: const LinearProgressIndicator(
                                backgroundColor: Color(0xffC4C4C4),
                                valueColor: AlwaysStoppedAnimation<Color>(
                                    Color(0xffECC055)),
                                value: 0.15,
                                minHeight: 14,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 180,
                    height: 230,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color(0xffC4C4C4).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("assets/icons/icon2.png"),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 180,
                    height: 230,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: const Color(0xffC4C4C4).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset("assets/icons/icon2.png"),
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
