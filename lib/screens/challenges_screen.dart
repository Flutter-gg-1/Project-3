import 'package:flutter/material.dart';               // imports material design widgets and properities
import 'package:project3/widgets/challenges_widget/achievements.dart';
import 'package:project3/widgets/bottom_navbar.dart'; // widget represents bottom navigation bar

// Challenges page
class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  final List<String> achievementsIcons = const ['painting','cactus','basketball'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              alignment: Alignment.center,
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(vertical: 15),
              margin: const EdgeInsets.only(top: 28),
              color: const Color(0xccE5E5E5),
              child: const Text("Challenges",style: TextStyle(fontSize: 30, color: Colors.black))
            ),
            Flexible(
              child: ListView(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 30, left: 15, right: 15),
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: const Color.fromRGBO(0, 0, 0, 0.1)),
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffFBF5F2),
                    ),
                    child: Column(
                      children: [
                        Card.filled(
                          color: const Color(0xffFBF5F2),
                          child: ListTile(
                            leading: FittedBox(fit: BoxFit.none,child: Image.asset("assets/images/girl.png",width: 200,height: 104)),
                            title: const Text("Complete 1000 word streak",style: TextStyle(fontSize: 20, height: 1.2)),
                            subtitle: const Text("Win 1000XP along with 300 diamonds.",textAlign: TextAlign.left,style: TextStyle(fontSize: 15,color: Colors.black)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 15, top: 15, bottom: 10),
                    child: const Text("Achievements",style: TextStyle(fontSize: 30))
                  ),
                  Achievements(data: achievementsIcons)
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavbar(currentIndex: 1, iconColor: Color(0xffDC3F00)),
    );
  }
}