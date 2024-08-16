import 'package:educational_kids_game/widget/Lock_padge.dart';
import 'package:educational_kids_game/widget/intro_padge.dart';
import 'package:educational_kids_game/widget/phrases_padge.dart';
import 'package:educational_kids_game/widget/travel_padge.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbf5f2),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: const Color(0xFFe9e8e8),
              width: double.infinity,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Verbal skills"),
                  Flexible(
                    child: ListTile(
                      leading: Icon(
                          color: Color(0xffECC055), FontAwesomeIcons.crown),
                      title:
                          Text(style: TextStyle(color: Color(0xffEB9F4A)), "3"),
                    ),
                  ),
                  Flexible(
                    child: ListTile(
                      leading:
                          Icon(color: Color(0xff338F9B), FontAwesomeIcons.gem),
                      title: Text(
                          style: TextStyle(color: Color(0xff338F9B)), "234XP"),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(child: IntroPadge()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        PhrasesPadge(),
                        TravelPadge(),
                      ],
                    ),
                    LockPadge(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        LockPadge(),
                        LockPadge(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
