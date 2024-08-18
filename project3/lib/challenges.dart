import 'package:flutter/material.dart';


class Challenges extends StatelessWidget {
  const Challenges({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(30.0),
          child: Container(
            color: const Color.fromARGB(255, 229, 229, 229),
            child: const Padding(
              padding: EdgeInsets.all(10),
              child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Challenges",  style: TextStyle( fontSize: 20)),
                
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
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(29, 0, 0, 0), width: 2),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(0, 255, 255, 255),
                  ) ,
                  child: Row(children: [
                    Image.asset("assets/images/girl.png",),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,  
                      children: [
                      Text(
                      'Complete 1000 word \nstreak',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'Win 1000XP along \nwith 300 diamonds.',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    ],),

                  ],),
                ),
            ],),
            const SizedBox(height: 20),
            const Text("Achievements", style: TextStyle(fontSize: 20,),),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(29, 0, 0, 0), width: 2),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(0, 255, 255, 255),
                  ) ,
                  child: Row(children: [
                    Image.asset("assets/images/plant.png",),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,  
                      children: [
                      Text(
                      'Lorem Ipsum ',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'is simply dummy text of \nthe printing and \ntypesetting industry. \n',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    ],),

                  ],),
                ),
            ],),
             const SizedBox(height: 5),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(29, 0, 0, 0), width: 2),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(0, 255, 255, 255),
                  ) ,
                  child: Row(children: [
                    Image.asset("assets/images/plant2.png",),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,  
                      children: [
                      Text(
                      'Lorem Ipsum ',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'is simply dummy text of \nthe printing and \ntypesetting industry. \n',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    ],),

                  ],),
                ),
            ],),
                 const SizedBox(height: 5),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color.fromARGB(29, 0, 0, 0), width: 2),
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(0, 255, 255, 255),
                  ) ,
                  child: Row(children: [
                    Image.asset("assets/images/ball.png",),
                    const SizedBox(width: 5),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,  
                      children: [
                      Text(
                      'Lorem Ipsum ',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      'is simply dummy text of \nthe printing and \ntypesetting industry. \n',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    ],),

                  ],),
                ),
            ],),  
            ],
          ),
        ),
        ),
       ),
       
    );
  }



} 