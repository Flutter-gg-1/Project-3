import 'package:flutter/material.dart';           // imports material design widgets and properities
import 'package:project3/widgets/unit_widget/skill.dart';     // widget represents skill
import 'package:project3/widgets/stats_bar.dart'; // library to support multi border

// unit page
class UnitScreen extends StatelessWidget {
  const UnitScreen({super.key});

  final List<Map<String, dynamic>> statsBarData = const [
    {'title': 'Verbal skills', "color": Color.fromRGBO(0, 0, 0, 0.9)},
    {'type': 'crown', "value": "3", "color": Color(0xffECC055)},
    {'type': 'gem', "value": "213", "color": Color(0xff02A1FB)}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      body: SafeArea(
        child: Column(
          children: [
            StatsBar(data: statsBarData),
            const SizedBox(height: 5),
            Flexible(
              child: ListView(
                children: [
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top: 50),
                        width: 211,
                        height: 128,
                        decoration: BoxDecoration(
                          color: const Color(0xffE9E8E8),
                          border: Border.all(color: const Color.fromRGBO(0, 0, 0, 0.2), width: 3),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 60),
                              child: Text("Unit 1",style: TextStyle(fontSize: 20)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    SizedBox(
                                      width: 101,
                                      child: LinearProgressIndicator(
                                        minHeight: 14,
                                        backgroundColor: const Color(0xffc4c4c4),
                                        borderRadius: BorderRadius.circular(30),
                                        color: const Color(0xffECC055),
                                        value: 34 / 101,
                                        valueColor:const AlwaysStoppedAnimation<Color>(Color(0xffECC055))),
                                    ),
                                    Image.asset('assets/images/crown_stroked.png'),
                                  ]
                                ),
                                const Text("3/40",style: TextStyle(fontSize: 15,color: Color.fromRGBO(0, 0, 0, 0.5))),
                              ],
                            )
                          ],
                        ),
                      ),
                      Image.asset("assets/images/horse.png"),
                    ]
                  ),
                  const SizedBox(height: 60),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Skill(assetImage: "assets/images/pencil.png", skillName:"Intro",level: 1,)]
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Skill(assetImage: "assets/images/book.png", skillName:"Phrases", level: 1,),
                      SizedBox(width: 20,),
                      Skill(assetImage: "assets/images/bike.png", skillName:"Travel", level: 1,),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Skill(assetImage: "assets/images/lock.png",imageWidth: 30, imageHeight: 38,)]
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Skill(assetImage: "assets/images/lock.png",imageWidth: 30, imageHeight: 38,),
                      SizedBox(width: 20,),
                      Skill(assetImage: "assets/images/lock.png",imageWidth: 30, imageHeight: 38,),
                    ]
                  )
                ]
              )
            )
          ]
        ),
      )
    );
  }
}