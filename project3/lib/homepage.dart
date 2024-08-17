import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(30.0),
          child: Container(
            color: const Color.fromARGB(255, 229, 229, 229), // Set the background color here
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 20),
                Image.asset("assets/images/fire.png",),
                const Text("  3",  style: TextStyle( color: Color.fromARGB(255, 235, 160, 74), fontSize: 18)),
                const Spacer(),
                Image.asset("assets/images/box.png",),
                const Text("  1432 XP",  style: TextStyle( color: Color.fromARGB(255, 51, 143, 155), fontSize: 18)),
                const Spacer(),
                Image.asset("assets/images/heart.png",),
                const SizedBox(width: 20),
              ],
            ),
          ),
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
          padding:  const EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: ListView(
            children: [
              Row(
                children: [
                  const Text("Logical reasoning", style: TextStyle(fontSize: 22),),
                  const Spacer(),
                  Image.asset("assets/images/crown.png"),
                  const Text("18/40", style: TextStyle(color: Color.fromARGB(160, 0, 0, 0), fontSize: 18),),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const UnitCard(percentage: 0.4), 
                    const Spacer(),
                  Container(
                    height: 160,
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(80, 196, 196, 196),
      ),
        child: Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Image.asset("assets/images/locked.png"),
        ),
                  )     
                ],
              )
            ],
          ),
        ),
        ),
      ),
    );
  }



} 
class Progressbar extends StatelessWidget {

   final double percentage;
   const Progressbar({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(40.0)),
          ),
          child: const Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: LinearProgressIndicator(
                minHeight: 10,
                value: 0.4,
                color: Color.fromARGB(255, 236, 193, 85),
                backgroundColor: Color.fromARGB(255, 196, 196, 196),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -2,
          left: -3,
          child: Image.asset("assets/images/crown_strock.png"),
        ),
      ],
    );
  }
}
class UnitCard extends StatelessWidget {

  final double percentage;
   const UnitCard({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 160,
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(80, 196, 196, 196),
      ),
        child: Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
        child: Stack(
          children: [
              const Align(
              alignment: Alignment.topCenter,
              child: Text(
                'Unit 1',
                style: TextStyle(
                  fontSize: 22,                           ),
              ),
            ),
            Progressbar(percentage: percentage),  
          ],
          ),
        ),
      );
    }
}