import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../verbal_skills_screen.dart';
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
                        color: const Color(0xffC4C4C4).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      margin: const EdgeInsets.only(left: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Unit 1", style: GoogleFonts.roboto(textStyle:const TextStyle(fontSize: 24, color: Colors.black),)),
                          const Padding(padding: EdgeInsets.only(top: 10,)),
                          Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Image.asset('assets/home_screen_icons/crown.png', width: 100, height: 100, alignment: const Alignment(-1.7, 1),),
                              Positioned(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                    width: 115,
                                    height: 14,
                                    color: const Color(0xffC4C4C4),
                                    child: LinearProgressIndicator(
                                      value: value,
                                      valueColor: const AlwaysStoppedAnimation<Color>(Color(0xffECC055)),
                                      backgroundColor: const Color(0xffC4C4C4),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
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
                        return const VerbalSkillsScreen();
                      }));
                    },
                  ),
                  const LockContainer(),
                ],
              );
  }
}