import 'package:flutter/material.dart'; // imports material design widgets and properities
import 'package:project3/screens/home_screen.dart'; // Home page
import 'package:project3/widgets/skill.dart'; // library to support multi border

// unit page
class UnitScreen extends StatefulWidget {
  const UnitScreen({super.key});

  @override
  State<UnitScreen> createState() => _UnitScreenState();
}

class _UnitScreenState extends State<UnitScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            margin: const EdgeInsets.only(top: 85),
            color: const Color(0xccE5E5E5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Verbal skills",
                  style: TextStyle(
                      fontSize: 30, color: Color.fromRGBO(0, 0, 0, 0.9)),
                ),
                Row(
                  children: [
                    Image.asset("assets/images/crown.png"),
                    const SizedBox(width: 10),
                    const Text("3",
                        style:
                            TextStyle(fontSize: 25, color: Color(0xffECC055)))
                  ],
                ),
                Row(
                  children: [
                    Image.asset("assets/images/gem.png"),
                    const SizedBox(width: 10),
                    const Text(
                      "213",
                      style: TextStyle(fontSize: 25, color: Color(0xff02A1FB)),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Flexible(
              child: ListView(
            children: [
              Stack(alignment: Alignment.topCenter, children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 50),
                  width: 211,
                  height: 128,
                  decoration: BoxDecoration(
                      color: const Color(0xffE9E8E8),
                      border:
                          Border.all(color: const Color.fromRGBO(0, 0, 0, 0.2)),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 60),
                        child: Text(
                          "Unit 1",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Stack(alignment: Alignment.centerLeft, children: [
                            SizedBox(
                              width: 101,
                              child: LinearProgressIndicator(
                                  minHeight: 14,
                                  backgroundColor: const Color(0xffc4c4c4),
                                  borderRadius: BorderRadius.circular(30),
                                  color: const Color(0xffECC055),
                                  value: 34 / 101,
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          Color(0xffECC055))),
                            ),
                            Image.asset('assets/images/crown_stroked.png'),
                          ]),
                          const Text(
                            "3/40",
                            style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(0, 0, 0, 0.5)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Image.asset("assets/images/horse.png"),
              ]),
              const SizedBox(
                height: 40,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Skill(assetImage: "assets/images/pencil.png", skillName:"Intro", imageHeight: 42, imageWidth:77,level: 1,),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Skill(assetImage: "assets/images/book.png", skillName:"Phrases", imageWidth: 60, level: 1,),
                  SizedBox(width: 20,),
                  Skill(assetImage: "assets/images/bike.png", skillName:"Travel", imageWidth: 60, level: 1,),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Skill(assetImage: "assets/images/lock.png", imageWidth: 25,),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Skill(assetImage: "assets/images/lock.png", imageWidth: 25,),
                  SizedBox(width: 20,),
                  Skill(assetImage: "assets/images/lock.png", imageWidth: 25,),
                ],
              ),
            ]
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xcce5e5e5),
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xff41AC78),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 40,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.track_changes_outlined), label: "Challenges"),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_sharp), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return screens[index];
            }));
          });
        },
      ),
    );
  }
}
