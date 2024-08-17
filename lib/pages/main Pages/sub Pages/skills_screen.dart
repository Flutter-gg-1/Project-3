import 'package:educational_kids_game/widget/lock_padge.dart';
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
      appBar: AppBar(
        leading: const Text(""),
        backgroundColor: const Color(0xFFe9e8e8),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Verbal skills"),
              Flexible(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: const ListTile(
                    leading:
                        Icon(color: Color(0xffECC055), FontAwesomeIcons.crown),
                    title:
                        Text(style: TextStyle(color: Color(0xffEB9F4A)), "3"),
                  ),
                ),
              ),
              Flexible(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: const ListTile(
                    leading:
                        Icon(color: Color(0xff338F9B), FontAwesomeIcons.gem),
                    title: Text(
                        style: TextStyle(color: Color(0xff338F9B)), "234XP"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xfffbf5f2),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 4,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: Container(
                            margin: const EdgeInsets.only(top: 70),
                            width: MediaQuery.of(context).size.width / 2.4,
                            height: MediaQuery.of(context).size.height / 9,
                            decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              color: const Color(0xffE9E8E8),
                              border: Border.all(
                                  width: 2, color: const Color(0xffbababa)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                    "Unit 1"),
                                SizedBox(
                                  height: 20,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                6,
                                            margin:
                                                const EdgeInsets.only(top: 6),
                                            child:
                                                const LinearProgressIndicator(
                                              color: Color(0xFFECC055),
                                              value: .4,
                                            ),
                                          ),
                                          const Positioned(
                                            top: -4,
                                            child: Icon(
                                              size: 16,
                                              FontAwesomeIcons.crown,
                                              color: Colors.yellowAccent,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Text("3/40")
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Center(child: Image.asset("assets/Beep Beep Horse.png"))
                      ],
                    ),
                    const Center(child: IntroPadge()),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        PhrasesPadge(),
                        TravelPadge(),
                      ],
                    ),
                    const LockPadge(),
                    const Row(
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
