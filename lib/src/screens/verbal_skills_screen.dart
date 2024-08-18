import 'package:educational_kids_game/src/widgets/verbal_skills_levels.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class VerbalSkillsScreen extends StatefulWidget {
  const VerbalSkillsScreen({super.key});

  @override
  State<VerbalSkillsScreen> createState() => _VerbalSkillsScreenState();
}

class _VerbalSkillsScreenState extends State<VerbalSkillsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFBF5F2),
        appBar: AppBar(
            backgroundColor: const Color(0xffFBF5F2),
            toolbarHeight: 30,
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: Container(
                    height: 50,
                    color: const Color(0xffE5E5E5),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Verbal skills",
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            FluentIcons.crown_20_filled,
                            size: 35,
                            color: Color(0xffECC055),
                          ),
                          Text(" 3",
                              style: TextStyle(
                                  fontSize: 22, color: Color(0xffEB9F4A))),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            IonIcons.diamond,
                            size: 30,
                            color: Color(0xff02A1FB),
                          ),
                          Text(" 213",
                              style: TextStyle(
                                  fontSize: 22, color: Color(0xff02A1FB))),
                        ])))),
        body: Center(
          child: ListView(children: [
            Container(
                height: 170,
                margin:
                    const EdgeInsets.symmetric(horizontal: 110, vertical: 20),
                color: const Color(0xffFBF5F2),
                child: Stack(children: [
                  Container(
                    height: 110,
                    margin: const EdgeInsets.only(
                      top: 60,
                    ),
                    decoration: BoxDecoration(
                        color: const Color(0xffE9E8E8),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: const Color.fromARGB(255, 196, 196, 196),
                            width: 2)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Unit 1",
                          style: TextStyle(fontSize: 18),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 45,
                              ),
                              SizedBox(
                                width: 70,
                                child: LinearProgressIndicator(
                                    minHeight: 13,
                                    backgroundColor:  Color(0xffC4C4C4),
                                    color:  Color(0xffECC055),
                                    value: 0.75,
                                    borderRadius:  BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    )),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                " 3/40",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color.fromRGBO(0, 0, 0, 0.5)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Positioned(
                    bottom: 10,
                    left: 32,
                    child: Icon(
                      FluentIcons.crown_20_filled,
                      size: 35,
                      color: Color(0xffECC055),
                    ),
                  ),
                  Positioned(
                      right: 45,
                      child: Image.asset(
                        "assets/Beep Beep Horse.png",
                      ))
                ])),
            verbalSkillsLevels(
                logo: Image.asset("assets/Hands Pencil 1.png"),
                text: "1",
                title: "Intro"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                verbalSkillsLevels(
                    logo: Image.asset("assets/Hands Book.png"),
                    text: "1",
                    title: "Phrases"),
                verbalSkillsLevels(
                    logo: Image.asset("assets/Dayflow Bike.png"),
                    text: "1",
                    title: "Travel"),
              ],
            ),
            verbalSkillsLevels(
                logo: const Icon(
              FluentIcons.lock_closed_32_filled,
              size: 40,
              color: Color.fromRGBO(0, 0, 0, 0.5),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                verbalSkillsLevels(
                    logo: const Icon(
                  FluentIcons.lock_closed_32_filled,
                  size: 40,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                )),
                verbalSkillsLevels(
                    logo: const Icon(
                  FluentIcons.lock_closed_32_filled,
                  size: 40,
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                )),
              ],
            )
          ]),
        ));
  }
}
