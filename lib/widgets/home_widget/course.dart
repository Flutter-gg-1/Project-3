import 'package:flutter/material.dart';               // imports material design widgets and properities
import 'package:project3/screens/unit_screen.dart';   // unit page

// widget represents course
class Course extends StatelessWidget {
  final String courseName;
  final String courseScore;
  final int progress;
  const Course({super.key, required this.courseName, required this.courseScore, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 375,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(courseName,style: const TextStyle(fontSize: 35, color: Color(0xe6000000))),
              Row(
                children: [
                  Image.asset('assets/images/crown.png',width: 31,height: 27),
                  Text("$courseScore/40",style: const TextStyle(fontSize: 20, color: Color.fromRGBO(0, 0, 0, 0.6)))
                ],
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return const UnitScreen();
                }));
              },
              child: Card(
                color: const Color(0xffe5e1e0),
                child: SizedBox(
                  width: 179,
                  height: 227,
                  child: Column(
                    children: [
                      const SizedBox(height: 17,),
                      const Text("Unit 1", style: TextStyle(fontSize: 30, color: Colors.black),textAlign: TextAlign.center),
                      const SizedBox(height: 130),
                      Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          SizedBox(
                            width: 149,
                            child: LinearProgressIndicator(
                              minHeight: 17,
                              backgroundColor: const Color(0xffc4c4c4),
                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xffECC055),
                              value: progress / 149,
                            ),
                          ),
                          Image.asset('assets/images/crown_stroked.png', width: 31,height: 27),
                        ],
                      ),
                    ],
                  )
                ),
              ),
            ),
            Card(
              color: const Color(0xffe5e1e0),
              child: SizedBox(width: 179,height: 227,child: Image.asset('assets/images/lock.png')),
            ),
          ],
        ),
        const SizedBox(height: 25)
      ],
    );
  }
}