import 'package:educational_kids_game/src/challenge_screen.dart';
import 'package:educational_kids_game/src/home_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color(0xffFBF5F2),
      appBar: AppBar(
          backgroundColor: const Color(0xffFBF5F2),
          toolbarHeight: 30,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: Container(
                  height: 50,
                  color: const Color(0xffE5E5E5),
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Profile",
                          style: TextStyle(fontSize: 28)
                        )
                      ])))),
    );
  }
}
// child:
//                     Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
//                   ListTile(
//                     leading: Image.asset(
//                       "assets/Group.png",
//                     ),
//                     title: const Text(
//                       "Complete 1000 word streak",
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     subtitle: const Text("Win 1000XP along with 300 diamonds.",
//                         style: TextStyle(fontSize: 15)),
//                   ),
//                 ]))