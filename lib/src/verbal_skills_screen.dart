import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widget_of_verbal_skill_screen/circle_containers.dart';

// Verbal Skills Screen
class VerbalSkillsScreen extends StatelessWidget {
  const VerbalSkillsScreen({super.key});

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
                      Text(
                        "Verbal skills",
                        style: GoogleFonts.roboto(textStyle: const TextStyle(
                            color: Color.fromARGB(255, 0, 0, 0), fontSize: 26)),
                      ),
                      const Padding(padding: EdgeInsets.only(left: 60)),
                      Image.asset(
                        'assets/home_screen_icons/crown.png',
                        width: 29,
                        height: 27,
                      ),
                      const Padding(padding: EdgeInsets.only(left: 10)),
                      Text(
                        "3",
                        style:
                            GoogleFonts.roboto(textStyle:const TextStyle(color: Color(0xffEB9F4A), fontSize: 20),)
                      ),
                      const Padding(padding: EdgeInsets.only(left: 10)),
                      const Icon(
                        Icons.diamond,
                        color: Color(0xff02A1FB),
                        size: 35,
                      ),
                      const Padding(padding: EdgeInsets.only(left: 10)),
                      Text(
                        "213",
                        style:
                            GoogleFonts.roboto(textStyle:const TextStyle(color: Color(0xff02A1FB), fontSize: 20),)
                      ),
                    ],
                  ),
                ))),
        body: SafeArea(
            child: ListView(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width: 211,
                  height: 128,
                  decoration: BoxDecoration(
                      color: const Color(0xffE5E5E5),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: const Color.fromARGB(255, 135, 133, 133),
                          width: 3)),
                  margin:
                      const EdgeInsets.symmetric(vertical: 70, horizontal: 100),
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Text(
                        "Unit 1",
                        style: GoogleFonts.roboto(textStyle:const TextStyle(fontSize: 20)),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                      bottomRight: Radius.circular(30),
                                      topRight: Radius.circular(30)),
                                  child: Container(
                                    width: 80,
                                    height: 14,
                                    color: const Color(0xffC4C4C4),
                                    child: const LinearProgressIndicator(
                                      value: 0.2,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Color(0xffECC055)),
                                      backgroundColor: Color(0xffC4C4C4),
                                    ),
                                  ),
                                ),
                              ),
                              Image.asset(
                                'assets/home_screen_icons/crown.png',
                                width: 31,
                                height: 27,
                                alignment: const Alignment(5, 1),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, top: 10),
                            child: Text("3/40",style: GoogleFonts.roboto(textStyle:  TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.5)))),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                    height: 140,
                    child: Image.asset('assets/verbal_skill_icons/Horse.png')),
            
                    const Padding(
                      padding: EdgeInsets.only(top: 250),
                      child: CircleContainers(photoPath: 'assets/verbal_skill_icons/Pencil 1.png'),
                    ),
                Padding(
                  padding: const EdgeInsets.only(top: 400),
                  child: Text("Intro", style: GoogleFonts.roboto(textStyle:const TextStyle(fontSize: 20, color: Colors.black),),)
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 345, left: 110),
                  child: Text("1", style: GoogleFonts.roboto(textStyle:const TextStyle(fontSize: 15),)),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 430),
                  child: Row(
                    children: [
                      SizedBox(width: 60,),
                      CircleContainers(photoPath: 'assets/verbal_skill_icons/Book.png'),
                      SizedBox(width: 17,),
                      CircleContainers(photoPath: 'assets/verbal_skill_icons/Bike.png', ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 580, right: 160),
                  child: Text("Phrases", style: GoogleFonts.roboto(textStyle:const TextStyle(fontSize: 20,color: Colors.black ),),)
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 525, left: 260),
                  child: Text("1", style: GoogleFonts.roboto(textStyle:const TextStyle(fontSize: 15),),)
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 580, left: 160),
                  child: Text("Travel", style: GoogleFonts.roboto(textStyle:const TextStyle(fontSize: 20, color: Colors.black),),)
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 525, right: 60),
                  child: Text("1", style: GoogleFonts.roboto(textStyle:const TextStyle(fontSize: 15),),)
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 606),
                  child: CircleContainers(photoPath: 'assets/home_screen_icons/lock.png',),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 784),
                  child: Row(
                    children: [
                      SizedBox(width: 60,),
                      CircleContainers(photoPath: 'assets/home_screen_icons/lock.png'),
                      SizedBox(width: 17,),
                      CircleContainers(photoPath: 'assets/home_screen_icons/lock.png'),
                    ],
                  ),
                )
              ],
            ),
          ],
        )));
  }
}


