import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffFBF5F2),
      ),
      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                color: const Color(0xeffE9E8E8),
                width: double.infinity,
                height: 71,
                child: const Center(
                  child: Text(
                    "Profile",
                    style: TextStyle(fontSize: 30, fontFamily: 'Roboto'),
                  ),
                ),
              ),
              Positioned(
                top: 118,
                right: 25,
                child: Image.asset(
                  'images/Ellipse 1.png',
                  height: 90,
                  width: 90,
                ),
              ),
            ],
          ),
          const SizedBox(height: 28),
          const ListTile(
            title: Text(
              'Nidhi Pandya',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  fontSize: 30),
            ),
            subtitle: Text(
              'Nidhi12',
              style: TextStyle(fontSize: 20, fontFamily: 'Roboto'),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Image.asset(
                  'images/fa6-solid_clock.png',
                  height: 24,
                  width: 24,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "Joined March 2022",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          const Divider(thickness: 3, color: Color(0x10000000)),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, top: 11),
            child: Container(
              height: 69,
              width: 378,
              decoration: BoxDecoration(
                color: const Color(0xffFBF5F2),
                border: Border.all(
                  color: const Color(0x10000000),
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: [
                  Positioned(
                      top: 20,
                      right: 259,
                      left: 10,
                      bottom: 17,
                      child: FittedBox(
                          fit: BoxFit.none,
                          child: Image.asset('images/aa.png'))),
                  const Positioned(
                    top: 23,
                    bottom: 23,
                    left: 88,
                    right: 70,
                    child: SizedBox(
                      width: 223,
                      height: 23,
                      child: FittedBox(
                        fit: BoxFit.none,
                        child: Text(
                          "Friends updates",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 26,
                    bottom: 27,
                    left: 345,
                    right: 22,
                    child: SizedBox(
                      width: 9.95,
                      height: 16,
                      child: FittedBox(
                        fit: BoxFit.none,
                        child: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: const Color(0x10000000),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 35, right: 278, left: 25),
            child: FittedBox(
              fit: BoxFit.none,
              child: Text(
                "Statistics",
                style: TextStyle(fontSize: 30, fontFamily: 'Roboto'),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Container(
                width: 179,
                height: 61,
                margin: const EdgeInsets.only(left: 23),
                decoration: BoxDecoration(
                  color: const Color(0xffFBF5F2),
                  border: Border.all(
                    color: const Color(0x10000000),
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: 10,
                        left: 19,
                        right: 134,
                        bottom: 22,
                        child: FittedBox(
                            fit: BoxFit.none,
                            child: Image.asset("images/Vector (7).png"))),
                    const Positioned(
                      top: 10,
                      left: 58,
                      bottom: 28,
                      child: FittedBox(
                        fit: BoxFit.none,
                        child: Text(
                          '3',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 29,
                      left: 58,
                      child: FittedBox(
                        fit: BoxFit.none,
                        child: Text(
                          'Day Streak',
                          style: TextStyle(
                              fontFamily: 'Roboto', color: Color(0x40000000)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 179,
                height: 61,
                margin: const EdgeInsets.only(left: 23),
                decoration: BoxDecoration(
                  color: const Color(0xffFBF5F2),
                  border: Border.all(
                    color: const Color(0x10000000),
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: 10,
                        left: 19,
                        right: 134,
                        bottom: 22,
                        child: FittedBox(
                            fit: BoxFit.none,
                            child: Image.asset("images/Vector (8).png"))),
                    const Positioned(
                      top: 10,
                      left: 64,
                      bottom: 28,
                      child: FittedBox(
                        fit: BoxFit.none,
                        child: Text(
                          '1432',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 29,
                      left: 58,
                      child: FittedBox(
                        fit: BoxFit.none,
                        child: Text(
                          'Total XP',
                          style: TextStyle(
                              fontFamily: 'Roboto', color: Color(0x40000000)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Container(
                width: 179,
                height: 61,
                margin: const EdgeInsets.only(left: 23),
                decoration: BoxDecoration(
                  color: const Color(0xffFBF5F2),
                  border: Border.all(
                    color: const Color(0x10000000),
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: 10,
                        left: 19,
                        right: 134,
                        bottom: 22,
                        child: FittedBox(
                            fit: BoxFit.none,
                            child: Image.asset(
                                "images/noto_3rd-place-medal.png"))),
                    const Positioned(
                      top: 10,
                      left: 60,
                      bottom: 28,
                      child: FittedBox(
                        fit: BoxFit.none,
                        child: Text(
                          'Bronze',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 29,
                      left: 47,
                      child: FittedBox(
                        fit: BoxFit.none,
                        child: Text(
                          'Current League',
                          style: TextStyle(
                              fontFamily: 'Roboto', color: Color(0x40000000)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 179,
                height: 61,
                margin: const EdgeInsets.only(left: 23),
                decoration: BoxDecoration(
                  color: const Color(0xffFBF5F2),
                  border: Border.all(
                    color: const Color(0x10000000),
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    Positioned(
                        top: 10,
                        left: 19,
                        right: 134,
                        bottom: 22,
                        child: FittedBox(
                            fit: BoxFit.none,
                            child: Image.asset("images/bx_medal.png"))),
                    const Positioned(
                      top: 10,
                      left: 64,
                      bottom: 28,
                      child: FittedBox(
                        fit: BoxFit.none,
                        child: Text(
                          '0',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 29,
                      left: 58,
                      child: FittedBox(
                        fit: BoxFit.none,
                        child: Text(
                          'Top 3 Finishes',
                          style: TextStyle(
                              fontFamily: 'Roboto', color: Color(0x40000000)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 35),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 26),
                  child: Text(
                    'Friends',
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Roboto',
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.only(right: 23),
                  child: Text(
                    "ADD FRIENDS",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        color: Color(0xff02A1FB)),
                  ))
            ],
          ),
          const SizedBox(height: 16),
          Container(
            margin: const EdgeInsets.only(left: 25, right: 25),
            height: 210,
            width: 377,
            decoration: BoxDecoration(
              color: const Color(0xffFBF5F2),
              border: Border.all(
                color: const Color(0x10000000),
                width: 3.0,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 53, top: 11, right: 103),
                      height: 18,
                      width: 84,
                      child: const FittedBox(
                        fit: BoxFit.none,
                        child: Text(
                          "FOLLOWING",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Roboto',
                            color: Color(0xff02A1FB),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 11),
                      height: 18,
                      width: 84,
                      child: const FittedBox(
                        fit: BoxFit.none,
                        child: Text(
                          "FOLLOWING",
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 2,
                        color: const Color(
                            0xff02A1FB), // Blue color for the first half
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 2,
                        color: const Color(
                            0x10000000), // Border color for the second half
                      ),
                    ),
                  ],
                ),
                const Column(
                  children: [
                    Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Color(0xffAB70DF),
                            child: Text(
                              "H",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ),
                          title: Text(
                            "Hardi",
                            style:
                                TextStyle(fontFamily: 'Roboto', fontSize: 20),
                          ),
                          subtitle: Text("4367 XP"),
                        )
                      ],
                    ),
                    Divider(
                      color: Color(0x10000000),
                      thickness: 1.5,
                    ),
                    Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Color(0xffDF7070),
                            child: Text(
                              "K",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: 15,
                                  color: Colors.white),
                            ),
                          ),
                          title: Text(
                            "Krishna",
                            style:
                                TextStyle(fontFamily: 'Roboto', fontSize: 20),
                          ),
                          subtitle: Text("2334 XP"),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 28),
          Container(
            width: 378,
            height: 228,
            margin: const EdgeInsets.only(left: 26, right: 24),
            decoration: BoxDecoration(
              color: const Color(0xffFBF5F2),
              border: Border.all(
                color: const Color(0x10000000),
                width: 3.0,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: -45,
                  bottom: 30,
                  right: 212,
                  left: 0,
                  child: FittedBox(
                    fit: BoxFit.none,
                    child: Image.asset('images/Dayflow Black Cat.png'),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 166,
                  child: const FittedBox(
                      fit: BoxFit.none,
                      child: Text(
                        'Invite your friends',
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                      )),
                ),
                Positioned(
                  top: 50,
                  left: 166,
                  child: const FittedBox(
                      fit: BoxFit.none,
                      child: Text(
                        "Tell your friends it’s\n free and fun to learn\n on Mental up!",
                        style: TextStyle(fontSize: 20, fontFamily: 'Roboto'),
                      )),
                ),
                Positioned(
                  top: 155,
                  left: 29,
                  right: 28,
                  child: SizedBox(
                    height: 47,
                    width: 312,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff02A1FB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Center(
                        child: Text(
                          "INVITE FRIENDS",
                          style: TextStyle(
                            fontSize: 21,
                            color: Colors.white,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
