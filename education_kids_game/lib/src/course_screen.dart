import 'package:education_kids_game/src/customWidgets/skill_widget.dart';
import 'package:education_kids_game/src/customWidgets/custom_icons_icons.dart';
import 'package:flutter/material.dart';

class CourseScreen extends StatelessWidget {
  const CourseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Text(""),
          bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 71),
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 71,
              padding: const EdgeInsets.symmetric(horizontal: 50),
              color: const Color(0xffE5E5E5),
              child: const Row(
                children: [
                  Text("Verbal skills", style: TextStyle(fontSize: 35)),
                  SizedBox(width: 20),
                  Expanded(
                      child: Icon(CustomIcons.crown, color: Color(0xffECC055))),
                  SizedBox(width: 20),
                  Text(
                    "3",
                    style: TextStyle(fontSize: 25, color: Color(0xffECC055)),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                      child:
                          Icon(CustomIcons.diamond, color: Color(0xff02A1FB))),
                  SizedBox(width: 20),
                  Text("213",
                      style: TextStyle(fontSize: 25, color: Color(0xff02A1FB)))
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          const SizedBox(height: 40),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 221, 220, 220),
                    border:
                        Border.all(color: const Color(0xffC4C4C4), width: 4)),
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                padding: const EdgeInsets.all(10),
                alignment: Alignment.bottomCenter,
                height: 128,
                width: 211,
              ),
              const Positioned(
                bottom: 100,
                child: Image(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/Beep_Beep_Horse.png'),
                ),
              ),
              Positioned(
                  bottom: 40,
                  child: Column(
                    children: [
                      const Text(
                        "Uint 1",
                        style: TextStyle(fontSize: 20),
                      ),
                      Row(
                        children: [
                          const Icon(
                            CustomIcons.crown,
                            color: Color(0xffECC055),
                          ),
                          const SizedBox(width: 3),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 14,
                            width: 100,
                            margin: const EdgeInsets.only(top: 12),
                            decoration: const BoxDecoration(
                                color: Color(0xffC4C4C4),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(30),
                                    bottomRight: Radius.circular(30))),
                            child: Container(
                                width: 15,
                                height: 14,
                                decoration: const BoxDecoration(
                                    color: Color(0xffECC055),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(30),
                                        bottomRight: Radius.circular(30)))),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            " 3/40",
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ],
                  )),
            ],
          ),
          const SizedBox(height: 40),
          const SkillWidget(
              imgUrl: "assets/Hands_Pencil.png",
              title: "Intro",
              level: "1",
              imgSize: 0),
          const SizedBox(height: 40),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SkillWidget(
                  imgUrl: "assets/Hands_Book.png",
                  title: "Phrases",
                  level: "1",
                  imgSize: 0),
              SizedBox(width: 20),
              SkillWidget(
                  imgUrl: "assets/Dayflow_Bike.png",
                  title: "Travel",
                  level: "1",
                  imgSize: 0),
            ],
          ),
          const SizedBox(height: 50),
          const SkillWidget(
              imgUrl: "assets/lock.png", title: "", level: "", imgSize: 40),
          const SizedBox(height: 40),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SkillWidget(
                  imgUrl: "assets/lock.png", title: "", level: "", imgSize: 40),
              SizedBox(width: 20),
              SkillWidget(
                  imgUrl: "assets/lock.png", title: "", level: "", imgSize: 40),
            ],
          ),
          const SizedBox(height: 50)
        ])));
  }
}
