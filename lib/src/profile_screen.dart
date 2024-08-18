import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:project_3/src/home_screen.dart';
import 'package:project_3/src/skills_screen.dart';
import 'package:project_3/src/challenges_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const HomeScreen();
                      }));
                    },
                    icon: const Icon(
                      Icons.home,
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
                    onPressed: () {},
                    icon: const Icon(
                      Icons.people,
                      size: 40,
                      color: Color(0xffAB70DF),
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
      body: SingleChildScrollView(
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
                child: const Text('Profile',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Roboto',
                        color: Color(0xff000000)))),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nidhi Pandya',
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.w400),
                      ),
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('Nidhi12')),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time),
                          Text(
                            ' Joined March 2022',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'Roboto',
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15, right: 25),
                      child: Image.asset("assets/Ellipse 1.png"),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Divider(),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 378,
                  height: 69,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(12, 233, 232, 232),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          width: 3,
                          color: const Color.fromARGB(255, 199, 199, 199))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Row(
                          children: [
                            Image.asset("assets/cele.png"),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                'Friends updates',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Row(
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.chevron_right,
                                size: 40,
                                color: Color.fromARGB(255, 199, 199, 199),
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            const Align(
              alignment: AlignmentDirectional.bottomStart,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 50,
                  top: 25,
                ),
                child: Text(
                  'Statistics',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto'),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: 61,
                    width: 179,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            width: 3,
                            color: const Color.fromARGB(255, 199, 199, 199)),
                        color: const Color.fromARGB(12, 233, 232, 232)),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10, bottom: 14),
                          child: Icon(
                            Icons.local_fire_department_sharp,
                            color: Color(0xffEB9F4A),
                            size: 40,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '3',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Day Streak',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color:
                                          Color.fromARGB(255, 160, 160, 160)),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 61,
                  width: 179,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          width: 3,
                          color: const Color.fromARGB(255, 199, 199, 199)),
                      color: const Color.fromARGB(12, 233, 232, 232)),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10, bottom: 14),
                        child: Icon(
                          Icons.bolt,
                          color: Color(0xffECC055),
                          size: 40,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '1432',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Total XP',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Color.fromARGB(255, 160, 160, 160)),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Container(
                    height: 61,
                    width: 179,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            width: 3,
                            color: const Color.fromARGB(255, 199, 199, 199)),
                        color: const Color.fromARGB(12, 233, 232, 232)),
                    child: Row(
                      children: [
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 10, bottom: 12),
                            child:
                                Image.asset("assets/noto_3rd-place-medal.png")),
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bronze',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  'Current League',
                                  style: TextStyle(
                                      fontSize: 14.0,
                                      color:
                                          Color.fromARGB(255, 160, 160, 160)),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 61,
                  width: 179,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          width: 3,
                          color: const Color.fromARGB(255, 199, 199, 199)),
                      color: const Color.fromARGB(12, 233, 232, 232)),
                  child: Row(
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 8),
                          child: Image.asset("assets/bx_medal.png")),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '0',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                'Top 3 Finishes',
                                style: TextStyle(
                                    fontSize: 14.0,
                                    color: Color.fromARGB(255, 160, 160, 160)),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 60, right: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Friends',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                  ),
                  Text('ADD FRIENDS',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff02A1FB)))
                ],
              ),
            ),
            Container(
              width: 377,
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      width: 3,
                      color: const Color.fromARGB(255, 199, 199, 199))),
              child: const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 50, top: 10, right: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'FOLLOWING',
                          style: TextStyle(
                              color: Color(0xff02A1FB),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto'),
                        ),
                        Text('FOLLOWERS',
                            style: TextStyle(
                                color: Color.fromARGB(255, 131, 131, 131),
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Roboto'))
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(child: Divider(color: Colors.blue)),
                      Expanded(child: Divider())
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: Color(0xffAB70DF),
                              child: Text("H"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Column(
                                children: [
                                  Text(
                                    'Hardi',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      '4367 XP',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromARGB(
                                              255, 160, 160, 160)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.chevron_right,
                                size: 40,
                                color: Color.fromARGB(255, 199, 199, 199),
                              ))
                        ],
                      )
                    ],
                  ),
                  Expanded(child: Divider()),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, bottom: 2),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: Color(0xffDF7070),
                              child: Text("K"),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  Text(
                                    'Krishna',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 13),
                                    child: Text(
                                      '2334 XP',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400,
                                          color: Color.fromARGB(
                                              255, 160, 160, 160)),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.chevron_right,
                                size: 40,
                                color: Color.fromARGB(255, 199, 199, 199),
                              ))
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 228,
              width: 378,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 3,
                      color: const Color.fromARGB(255, 199, 199, 199)),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 375,
                    height: 115,
                    child: Row(
                      children: [
                        Image.asset("assets/Dayflow Black Cat.png"),
                        const Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 24),
                                child: Text(
                                  "Invite your friends",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 20, top: 10),
                                  child: Text(
                                    "Tell your friends it is free and fun to learn on Mental up!",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Container(
                    width: 321,
                    height: 47,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 1,
                            blurStyle: BlurStyle.normal,
                            color: Color(0xff02A1FB),
                            offset: Offset(0, 4))
                      ],
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: Text(
                          "INVITE FRIENDS",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
