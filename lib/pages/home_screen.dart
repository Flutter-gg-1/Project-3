import 'package:educational_kids_game/widget/unit_one.dart';
import 'package:educational_kids_game/widget/unit_two.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  Flexible(
                    child: ListTile(
                      leading:
                          Icon(color: Color(0xffEB9F4A), FontAwesomeIcons.fire),
                      title:
                          Text(style: TextStyle(color: Color(0xffEB9F4A)), "3"),
                    ),
                  ),
                  Flexible(
                    child: ListTile(
                      leading:
                          Icon(color: Color(0xff338F9B), FontAwesomeIcons.box),
                      title: Text(
                          style: TextStyle(color: Color(0xff338F9B)), "234XP"),
                    ),
                  ),
                  Flexible(
                    child: ListTile(
                      leading: Icon(
                          color: Color(0xffDC3F00), FontAwesomeIcons.heart),
                      title: Icon(
                          color: Color(0xffDC3F00), FontAwesomeIcons.infinity),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                            style: TextStyle(fontSize: 18),
                            "Logical reasoning"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: const ListTile(
                            leading: Icon(
                              FontAwesomeIcons.crown,
                              color: Colors.yellowAccent,
                              size: 14,
                            ),
                            title:
                                Text(style: TextStyle(fontSize: 12), "18/40"),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        UnitOne(),
                        UnitTwo(),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                            style: TextStyle(fontSize: 18),
                            "Artistic thinking"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: const ListTile(
                            leading: Icon(
                              FontAwesomeIcons.crown,
                              color: Colors.yellowAccent,
                              size: 14,
                            ),
                            title:
                                Text(style: TextStyle(fontSize: 12), "35/40"),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        UnitOne(),
                        UnitTwo(),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                            style: TextStyle(fontSize: 18), "Verbal skills"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: const ListTile(
                            leading: Icon(
                              FontAwesomeIcons.crown,
                              color: Colors.yellowAccent,
                              size: 14,
                            ),
                            title: Text(style: TextStyle(fontSize: 12), "3/40"),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        UnitOne(),
                        UnitTwo(),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
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
