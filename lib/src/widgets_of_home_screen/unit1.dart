import 'package:flutter/material.dart';

import '../verbal_skill_screen.dart';
import 'lock_container.dart';

class Unit1 extends StatelessWidget {
  final double value;
  const Unit1({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                  InkWell(
                    child: Container(
                      width: 179,
                      height: 227,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 217, 217, 217),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      margin: const EdgeInsets.only(left: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Unit 1", style: TextStyle(fontSize: 24),),
                          const Padding(padding: EdgeInsets.only(top: 70)),
                          Row(
                            children: [
                              const Padding(padding: EdgeInsets.all(5)),
                              Image.asset('assets/home_screen_icons/crown.png'),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Container(
                                  width: 125,
                                  height: 14,
                                  color: const Color(0xffC4C4C4),
                                  child: LinearProgressIndicator(
                                    value: value,
                                    valueColor: const AlwaysStoppedAnimation<Color>(Color(0xffECC055)),
                                    backgroundColor: const Color(0xffC4C4C4),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return const VerbalSkillScreen();
                      }));
                    },
                  ),
                  const LockContainer(),
                ],
              );
  }
}