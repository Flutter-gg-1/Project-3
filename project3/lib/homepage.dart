import 'package:flutter/material.dart';
import 'package:flutter_application_1/lessons.dart';
import 'progressbar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

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
                  const Text("  18/40", style: TextStyle(color: Color.fromARGB(160, 0, 0, 0), fontSize: 18),),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  UnitCard(percentage: 0.4), 
                  Spacer(),
                  LockedCard(),                      
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text("Artistic thinking", style: TextStyle(fontSize: 22),),
                  const Spacer(),
                  Image.asset("assets/images/crown.png"),
                  const Text("  35/40", style: TextStyle(color: Color.fromARGB(160, 0, 0, 0), fontSize: 18),),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  UnitCard(percentage: 0.8), 
                  Spacer(),
                  LockedCard(),                      
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text("Verbal skills", style: TextStyle(fontSize: 22),),
                  const Spacer(),
                  Image.asset("assets/images/crown.png"),
                  const Text("  3/40", style: TextStyle(color: Color.fromARGB(160, 0, 0, 0), fontSize: 18),),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  UnitCard(percentage: 0.3), 
                  Spacer(),
                  LockedCard(),                      
                
                ],
              ), 
              
            ],
          ),
        ),
        ),
       ),
       bottomNavigationBar: const BottomNavBar(),
    );
  }



} 

class UnitCard extends StatelessWidget {
  final double percentage;
  const UnitCard({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Lessons()),
        );
      },
      child: Container(
        height: 160,
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(80, 196, 196, 196),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 30),
          child: Stack(
            children: [
              const Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Unit 1',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              Progressbar(percentage: percentage),
            ],
          ),
        ),
      ),
    );
  }
}
class LockedCard extends StatelessWidget {

   const LockedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 160,
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(80, 196, 196, 196),
        ),
          child: Padding(padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Image.asset("assets/images/locked.png"),
          ),
      );
    }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    items: const <BottomNavigationBarItem>[
      
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.radar),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.people_alt),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: '',
      ),
    ],
  );
  
  }}