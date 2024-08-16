import 'package:educational_kids_game/pages/skills_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UnitOne extends StatelessWidget {
  const UnitOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      height: MediaQuery.of(context).size.height / 4,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        color: Color.fromARGB(84, 196, 196, 196),
      ),
      child: InkWell(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const SkillsScreen(),
        )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Unit 1"),
            SizedBox(
              height: 20,
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 6),
                    child: const LinearProgressIndicator(
                      color: Color(0xFFECC055),
                      value: .3,
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
            ),
          ],
        ),
      ),
    );
  }
}
