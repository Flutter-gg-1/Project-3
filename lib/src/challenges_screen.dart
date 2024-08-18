import 'package:flutter/material.dart';
import 'package:project_3/src/home_screen.dart';
import 'package:project_3/src/profile_screen.dart';

class ChellengesScreen extends StatelessWidget {
  const ChellengesScreen({super.key});

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
                    onPressed: () {},
                    icon: const Icon(
                      Icons.track_changes_outlined,
                      size: 40,
                      color: Color.fromARGB(255, 212, 75, 75),
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
      body: Column(
        children: [
          const SizedBox(
            height: 75,
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 71,
            color: const Color(0xffE9E8E8),
            child: const Text(
              'Challenges',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Roboto',
                  color: Color(0xff000000)),
            ),
          ),
          const SizedBox(
            height: 31,
          ),
          Container(
              height: 116,
              width: 378,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      width: 3,
                      color: const Color.fromARGB(255, 199, 199, 199)),
                  color: const Color.fromARGB(12, 233, 232, 232)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Image.asset("assets/Group.png"),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Complete 1000 word streak',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'Win 1000XP along with 300 diamonds.',
                            style: TextStyle(
                              fontSize: 14.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
          const Align(
            alignment: AlignmentDirectional.bottomStart,
            child: Padding(
              padding: EdgeInsets.only(left: 50, top: 25, bottom: 25),
              child: Text(
                'Achievements',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto'),
              ),
            ),
          ),
          Container(
              height: 116,
              width: 378,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      width: 3,
                      color: const Color.fromARGB(255, 199, 199, 199)),
                  color: const Color.fromARGB(12, 233, 232, 232)),
              child: Row(
                children: [
                  Image.asset("assets/Stuck at Home Vertical Painting 1.png"),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lorem Ipsum ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'is simply dummy text of the printing and typesetting industry.',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
              height: 116,
              width: 378,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      width: 3,
                      color: const Color.fromARGB(255, 199, 199, 199)),
                  color: const Color.fromARGB(12, 233, 232, 232)),
              child: Row(
                children: [
                  Image.asset("assets/Pebble People Plant 2.png"),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lorem Ipsum ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'is simply dummy text of the printing and typesetting industry.',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
          const SizedBox(
            height: 20,
          ),
          Container(
              height: 116,
              width: 378,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      width: 3,
                      color: const Color.fromARGB(255, 199, 199, 199)),
                  color: const Color.fromARGB(12, 233, 232, 232)),
              child: Row(
                children: [
                  Image.asset("assets/Pebble People Basketball.png"),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lorem Ipsum ',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'is simply dummy text of the printing and typesetting industry.',
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
