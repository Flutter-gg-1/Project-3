import 'package:flutter/material.dart';
import 'progressbar.dart';

class Lessons extends StatelessWidget {
  const Lessons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(30.0),
          child: Container(
            color: const Color.fromARGB(255, 229, 229, 229), 
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(width: 20),
                  const Text("Verbal skills",  style: TextStyle(fontSize: 20),),
                  const Spacer(),
                  Image.asset("assets/images/crown.png",),
                  const Text("  3",  style: TextStyle( color: Color.fromARGB(255, 236, 193, 85), fontSize: 18)),
                  const Spacer(),
                  Image.asset("assets/images/dimonds.png",),
                  const Text("  213",  style: TextStyle( color: Color.fromARGB(255, 51, 143, 155), fontSize: 18)),
                  const SizedBox(width: 20),
                ],
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
          child: ListView(
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
                Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(29, 0, 0, 0), width: 3),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(80, 196, 196, 196),
                  ) ,
                ),
                
                Positioned(
              bottom: 50,
              right: 20,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Image.asset('assets/images/horse.png', scale: 1.2,),
                ],
              ),
            ),
            const Positioned(
              top: 50,
              right: 50,
                child:
                  Text("Unit 1", style: TextStyle(fontSize: 18),)
            ),
             ],
              ), 
               ],
              ), 
                ],
              ), 
              const SizedBox(height: 10),            
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Lesson(imgPath: "assets/images/pen.png", lessonText: "Intro")
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Lesson(imgPath: "assets/images/book.png", lessonText: "Phrases"),
                Spacer(),
                Lesson(imgPath: "assets/images/bike.png", lessonText: "Travel"),
                ],
              ),
                 const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LockedLesson()
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                LockedLesson(),
                Spacer(),
                LockedLesson(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Lesson extends StatelessWidget {
  final String imgPath;
  final String lessonText; 

  const Lesson({super.key, required this.imgPath, required this.lessonText});

  @override
  Widget build(BuildContext context) {
    return Column( 
      children: [
        Stack(
          children: [
            Container(
              width: 120,
              height: 120,
              padding: const EdgeInsets.all(4), 
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 10, color: const Color.fromARGB(255, 196, 196, 196)), // outer border
              ),
              child: Container(
                padding: const EdgeInsets.all(5), 
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 114, 190, 199),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Image.asset(imgPath),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 5,
              child: Stack(
                children: [
                  Image.asset('assets/images/crown.png'), 
                  const Positioned(
                    bottom: 0,
                    right: 10,
                    child: Text(
                      '1', 
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Text(lessonText), 
      ],
    );
  }
}

class LockedLesson extends StatelessWidget {



  const LockedLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 120,
              height: 120,
              padding: const EdgeInsets.all(4), 
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 10, color: const Color.fromARGB(255, 196, 196, 196)), // outer border
              ),
              child: Container(
                padding: const EdgeInsets.all(5), 
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 114, 190, 199),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Image.asset('assets/images/locked.png', scale: 2,),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 5,
              child: Stack(
                children: [
                  Image.asset('assets/images/crown.png'), 
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
