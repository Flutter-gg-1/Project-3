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
            const SizedBox(
              width: double.infinity,
              child: Row(
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
                        const Text("Logical reasoning"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: const ListTile(
                            leading: Icon(
                              FontAwesomeIcons.crown,
                              color: Colors.yellowAccent,
                              size: 14,
                            ),
                            title: Text("18/40"),
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
                        const Text("Artistic thinking"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: const ListTile(
                            leading: Icon(
                              FontAwesomeIcons.crown,
                              color: Colors.yellowAccent,
                              size: 14,
                            ),
                            title: Text("35/40"),
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
                        const Text("Verbal skills"),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3,
                          child: const ListTile(
                            leading: Icon(
                              FontAwesomeIcons.crown,
                              color: Colors.yellowAccent,
                              size: 14,
                            ),
                            title: Text("3/40"),
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
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(color: Color(0xff41AC78), Icons.home),
            icon: Icon(Icons.home),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(FontAwesomeIcons.bullseye),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.people),
            label: '',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: '',
          ),
        ],
      ),
    );
  }
}
