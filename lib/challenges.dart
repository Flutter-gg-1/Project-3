import 'package:flutter/material.dart';

class Challenges extends StatelessWidget {
  const Challenges({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: ListView(
        children: [
          Container(
            color: const Color(0xeffE9E8E8),
            width: double.infinity,
            height: 71,
            child: const Center(
              child: Text(
                "Challenges",
                style: TextStyle(fontSize: 30, fontFamily: 'Roboto'),
              ),
            ),
          ),
          Container(
            width: 378,
            height: 116,
            margin: const EdgeInsets.symmetric(vertical: 31, horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0x10000000),
                width: 3.0,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Image.asset(
                      'images/Group.png',
                      width: 116,
                      height: 104.38,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Complete 1000 word streak',
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Win 1000XP along with 300 diamonds.',
                            style:
                                TextStyle(fontSize: 15, fontFamily: 'Roboto'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 31, left: 25, right: 213),
            child: const FittedBox(
              child: Text(
                'Achievements',
                style: TextStyle(fontSize: 30, fontFamily: 'Roboto'),
              ),
            ),
          ),
          Container(
            width: 378,
            height: 116,
            margin: const EdgeInsets.only(top: 42, left: 24, right: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0x10000000),
                width: 3.0,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Image.asset(
                      'images/Stuck at Home Vertical Painting 1.png',
                      width: 116,
                      height: 104.38,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lorem Ipsum ',
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'is simply dummy text of \nthe printing and \ntypesetting industry.',
                            style:
                                TextStyle(fontSize: 15, fontFamily: 'Roboto'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 378,
            height: 116,
            margin: const EdgeInsets.only(top: 28, left: 24, right: 26),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: const Color(0x10000000),
                width: 3.0,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Image.asset(
                      'images/Pebble People Basketball.png',
                      width: 116,
                      height: 104.38,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lorem Ipsum ',
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'is simply dummy text of\nthe printing and\ntypesetting industry.',
                            style:
                                TextStyle(fontSize: 15, fontFamily: 'Roboto'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
