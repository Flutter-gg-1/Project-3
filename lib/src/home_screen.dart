import 'package:flutter/material.dart';
import 'package:project_3/src/profile_screen.dart';
import 'package:project_3/src/skills_screen.dart';
import 'package:project_3/src/challenges_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.home,
                      size: 40,
                      color: Color(0xff41AC78),
                    ))
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const ChellengesScreen();
                      }));
                    },
                    icon: const Icon(
                      Icons.track_changes_outlined,
                      size: 40,
                      color: Color.fromARGB(255, 116, 116, 116),
                    ))
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const ProfileScreen();
                      }));
                    },
                    icon: const Icon(
                      Icons.people,
                      size: 40,
                      color: Color.fromARGB(255, 116, 116, 116),
                    ))
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      size: 40,
                      color: Color.fromARGB(255, 116, 116, 116),
                    ))
              ],
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 71,
                color: const Color(0xffE9E8E8),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.local_fire_department_outlined,
                          color: Color(0xffEB9F4A),
                          size: 40,
                        ),
                        Text(
                          '3',
                          style:
                              TextStyle(color: Color(0xffEB9F4A), fontSize: 35),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.indeterminate_check_box,
                          color: Color(0xff338F9B),
                          size: 45,
                        ),
                        Text(
                          '1432 XP',
                          style:
                              TextStyle(color: Color(0xff338F9B), fontSize: 30),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: Color(0xffDC3F00),
                          size: 45,
                        ),
                        Text(
                          '∞',
                          style:
                              TextStyle(color: Color(0xffDC3F00), fontSize: 35),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Logical reasoning  ',
                              style: TextStyle(fontSize: 36),
                            ),
                            Image.asset("assets/Vector.png"),
                            const Text(
                              '18/40',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(180, 0, 0, 0)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child: Container(
                                height: 250,
                                width: 210,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 223, 223, 223),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Unit 1',
                                      style: TextStyle(
                                          fontSize: 28, fontFamily: 'Roboto'),
                                    ),
                                    const SizedBox(
                                      height: 150,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 14),
                                      child: Row(
                                        children: [
                                          Image.asset("assets/Vector.png"),
                                          Container(
                                            padding: const EdgeInsets.only(
                                              left: 4,
                                            ),
                                            width: 140,
                                            height: 14,
                                            child: const ClipRRect(
                                              borderRadius:
                                                  BorderRadius.horizontal(
                                                right: Radius.circular(60),
                                              ),
                                              child: LinearProgressIndicator(
                                                value: 0.3,
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                            Color>(
                                                        Color(0xffECC055)),
                                                backgroundColor: Color.fromARGB(
                                                    255, 184, 184, 184),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return const SkillsScreen();
                                }));
                              },
                            ),
                            Container(
                                height: 250,
                                width: 210,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 223, 223, 223),
                                ),
                                child: const Icon(
                                  Icons.lock,
                                  size: 70,
                                  color: Color.fromARGB(255, 121, 121, 121),
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Artistic thinking     ',
                              style: TextStyle(fontSize: 36),
                            ),
                            Image.asset("assets/Vector.png"),
                            const Text(
                              '35/40',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(180, 0, 0, 0)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child: Container(
                                height: 250,
                                width: 210,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 223, 223, 223),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Unit 1',
                                      style: TextStyle(
                                          fontSize: 28, fontFamily: 'Roboto'),
                                    ),
                                    const SizedBox(
                                      height: 150,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 14),
                                      child: Row(
                                        children: [
                                          Image.asset("assets/Vector.png"),
                                          Container(
                                            padding: const EdgeInsets.only(
                                              left: 4,
                                            ),
                                            width: 140,
                                            height: 14,
                                            child: const ClipRRect(
                                              borderRadius:
                                                  BorderRadius.horizontal(
                                                right: Radius.circular(60),
                                              ),
                                              child: LinearProgressIndicator(
                                                value: 0.3,
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                            Color>(
                                                        Color(0xffECC055)),
                                                backgroundColor: Color.fromARGB(
                                                    255, 184, 184, 184),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return const SkillsScreen();
                                }));
                              },
                            ),
                            Container(
                                height: 250,
                                width: 210,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 223, 223, 223),
                                ),
                                child: const Icon(
                                  Icons.lock,
                                  size: 70,
                                  color: Color.fromARGB(255, 121, 121, 121),
                                ))
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            const Text(
                              'Verbal skills             ',
                              style: TextStyle(fontSize: 36),
                            ),
                            Image.asset("assets/Vector.png"),
                            const Text(
                              '3/40',
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color.fromARGB(180, 0, 0, 0)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child: Container(
                                height: 250,
                                width: 210,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 223, 223, 223),
                                ),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Text(
                                      'Unit 1',
                                      style: TextStyle(
                                          fontSize: 28, fontFamily: 'Roboto'),
                                    ),
                                    const SizedBox(
                                      height: 150,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 14),
                                      child: Row(
                                        children: [
                                          Image.asset("assets/Vector.png"),
                                          Container(
                                            padding: const EdgeInsets.only(
                                              left: 4,
                                            ),
                                            width: 140,
                                            height: 14,
                                            child: const ClipRRect(
                                              borderRadius:
                                                  BorderRadius.horizontal(
                                                right: Radius.circular(60),
                                              ),
                                              child: LinearProgressIndicator(
                                                value: 0.3,
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                            Color>(
                                                        Color(0xffECC055)),
                                                backgroundColor: Color.fromARGB(
                                                    255, 184, 184, 184),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return const SkillsScreen();
                                }));
                              },
                            ),
                            Container(
                                height: 250,
                                width: 210,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 223, 223, 223),
                                ),
                                child: const Icon(
                                  Icons.lock,
                                  size: 70,
                                  color: Color.fromARGB(255, 121, 121, 121),
                                ))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
