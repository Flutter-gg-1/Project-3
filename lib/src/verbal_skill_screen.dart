import 'package:flutter/material.dart';

import 'widgets_of_verbal_skill_screen/circle_containers.dart';

class VerbalSkillScreen extends StatelessWidget {
  const VerbalSkillScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbf5f2),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(75),
              child: Container(
                height: 71,
                width: 428,
                color: const Color(0xffE5E5E5),
                child: Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 47)),
                    const Text(
                      "Verbal skills",
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 24),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 60)),
                    Image.asset(
                      'assets/home_screen_icons/crown.png',
                      width: 25,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    const Text(
                      "3",
                      style: TextStyle(color: Color(0xffEB9F4A), fontSize: 20),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    const Icon(
                      Icons.diamond,
                      color: Color(0xff02A1FB),
                      size: 35,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 10)),
                    const Text(
                      "213",
                      style: TextStyle(color: Color(0xff02A1FB), fontSize: 20),
                    ),
                  ],
                ),
              ))),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                          width: 211,
                          height: 128,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 217, 217, 217),
                            borderRadius: BorderRadius.circular(20),
                            border: const Border(top: BorderSide(width: 2,),
                            bottom: BorderSide(width: 2, ),
                            left: BorderSide(width: 2),
                            right: BorderSide(width: 2))
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 70, horizontal: 100),
                          padding: const EdgeInsets.only(top: 50),
                          child: Column(
                            children: [
                              const Text("Unit 1", style: TextStyle(fontSize: 24),),
                              //const Padding(padding: EdgeInsets.only(top: 5)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Stack(
                                    alignment: Alignment.bottomLeft,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Container(
                                          width: 100,
                                          height: 14,
                                          color: const Color(0xffC4C4C4),
                                          child: const LinearProgressIndicator(
                                            value: 0.2,
                                            valueColor: AlwaysStoppedAnimation<Color>(Color(0xffECC055)),
                                            backgroundColor: Color(0xffC4C4C4),
                                          ),
                                        ),
                                      ),
                                      Image.asset('assets/home_screen_icons/crown.png',width: 30, height: 30, alignment: Alignment(-18,1),),
                                    ],
                                  ),
                                  const Text("3/40", style: TextStyle(fontSize: 15)),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 140,
                          child: Image.asset('assets/verball_skill_screen_icons/Horse.png')),
                ],
              ),
              const CircleContainers(photoPath: 'assets/verbal_skill_icons/Pencil 1.png'),
              Text("Intro"),
              const Row(
                children: [
                  Expanded(child: CircleContainers(photoPath: 'assets/verbal_skill_icons/Book.png')),
                  Expanded(child: CircleContainers(photoPath: 'assets/verbal_skill_icons/Bike.png',)),
                ],
              ),
              const CircleContainers(photoPath: 'assets/home_screen_icons/lock.png',),
              const Row(
                children: [
                  Expanded(child: CircleContainers(photoPath: 'assets/home_screen_icons/lock.png')),
                  Expanded(child: CircleContainers(photoPath: 'assets/home_screen_icons/lock.png')),
                ],
              )
            ],
          ),
        ))
    );
  }
}