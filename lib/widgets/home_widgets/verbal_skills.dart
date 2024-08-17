import 'package:educational_kids_project/pages/verbal_skills_page.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:getwidget/getwidget.dart';

class VerbalSkills extends StatelessWidget {
  const VerbalSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const VerbalSkillsPage();
                }));
              },
              child: Container(
                width: 165,
                height: 200,
                decoration: BoxDecoration(
                    color: const Color(0xffC4C4C4).withOpacity(0.4),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const Text("Unit 1"),
                      const SizedBox(
                        height: 130,
                      ),
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          GFProgressBar(
                            percentage: 9 / 40,
                            backgroundColor: const Color(0xffC4C4C4),
                            progressBarColor: const Color(0xffECC055),
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
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
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
    );
  }
}
