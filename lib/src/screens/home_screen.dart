import 'package:educational_kids_game/src/widgets/completon_container.dart';
import 'package:educational_kids_game/src/screens/verbal_skills_screen.dart';
import 'package:educational_kids_game/src/widgets/locked_container.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

/*
home screen has many section like Logical reasoning, Artistic thinking, Verbal skills
it has appbar show data and BottomNavigationBar with 4 sections home, profile, challenge, settings
*/
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),

      //appbar
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xffFBF5F2),
          toolbarHeight: 30,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Container(
              height: 50,
              color: const Color(0xffE5E5E5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    HeroIcons.fire,
                    color: Color(0xffEB9F4A),
                    size: 35,
                  ),
                  const Text(
                    "3",
                    style: TextStyle(fontSize: 20, color: Color(0xffEB9F4A)),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Image.asset(
                    "assets/Vector.png",
                    height: 25,
                  ),
                  const Text(
                    " 1432 XP",
                    style: TextStyle(fontSize: 20, color: Color(0xff338F9B)),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  const Icon(
                    Iconsax.heart_bold,
                    color: Color(0xffDC3F00),
                    size: 35,
                  ),
                  const Icon(
                    Icons.all_inclusive_rounded,
                    color: Color(0xffDC3F00),
                    size: 35,
                  )
                ],
              ),
            ),
          )),

      //body
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: ListView(children: [
          const Row(
            children: [
              Text(
                "Logical reasoning",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                width: 40,
              ),
              Icon(
                FluentIcons.crown_20_filled,
                size: 30,
                color: Color(0xffECC055),
              ),
              Text(
                " 18/40",
                style: TextStyle(
                    fontSize: 18, color: Color.fromRGBO(0, 0, 0, 0.5)),
              )
            ],
          ),
          Row(
            children: [
              completionContainer(value: 0.45, context: context),
              const SizedBox(
                width: 30,
              ),
              lockedContainer(),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Row(
            children: [
              Text(
                "Artistic thinking",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                width: 65,
              ),
              Icon(
                FluentIcons.crown_20_filled,
                size: 30,
                color: Color(0xffECC055),
              ),
              Text(
                " 35/40",
                style: TextStyle(
                    fontSize: 18, color: Color.fromRGBO(0, 0, 0, 0.5)),
              )
            ],
          ),
          Row(
            children: [
              completionContainer(value: 0.875, context: context),
              const SizedBox(
                width: 30,
              ),
              lockedContainer(),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const Row(
            children: [
              Text(
                "Verbal skills",
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(
                width: 130,
              ),
              Icon(
                FluentIcons.crown_20_filled,
                size: 30,
                color: Color(0xffECC055),
              ),
              Text(
                " 3/40",
                style: TextStyle(
                    fontSize: 18, color: Color.fromRGBO(0, 0, 0, 0.5)),
              )
            ],
          ),
          Row(
            children: [
              completionContainer(
                value: 0.075,
                context: context,
                nextScreen: const VerbalSkillsScreen(),
              ),
              const SizedBox(
                width: 30,
              ),
              lockedContainer(),
            ],
          ),
        ]),
      ),
    );
  }
}
