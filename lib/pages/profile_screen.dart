import 'package:flutter/material.dart';
import 'package:project3/pages/challenges_screen.dart';
import 'package:project3/pages/second_screen.dart';
import 'package:project3/pages/settings_screen.dart';
import 'package:scrollable_tab_view/scrollable_tab_view.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SecondScreen()));
              },
              icon: const Icon(Icons.house),
              iconSize: 31,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ChallengesScreen()));
              },
              icon: const Icon(Icons.track_changes_outlined),
              iconSize: 31,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.people_alt),
              iconSize: 31,
              color: const Color(0xffab70df),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsScreen()));
              },
              icon: const Icon(Icons.settings),
              iconSize: 31,
            )
          ],
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xffE5E5E5),
        title: const Center(
          child: Text(
            "Profle",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Nidhi Pandya",
                        style: TextStyle(
                            height: 1.1,
                            fontSize: 30,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        "Nidhi12",
                        style: TextStyle(
                            height: 1,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black45),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(Icons.access_time_filled_sharp,
                              color: Colors.black54, size: 15),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Joined March 2022",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 91,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Image.asset("assets/Ellipse1.png"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            const Divider(),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 378,
              height: 69,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 3, color: const Color(0xffe2ddda))),
              child: Center(
                child: Row(
                  children: [
                    const SizedBox(
                      width: 31,
                    ),
                    Image.asset("assets/img1.png"),
                    const SizedBox(
                      width: 5.93,
                    ),
                    const Text(
                      "Friends updates",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      width: 107,
                    ),
                    const Icon(
                      Icons.chevron_right_sharp,
                      color: Color(0xffc9c4c2),
                      size: 36,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  "Statistics",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 179,
                        height: 61,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                width: 3, color: const Color(0xffe2ddda))),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: ListTile(
                            subtitle: Text(
                              "Day Streak",
                              style: TextStyle(
                                  height: 2.6,
                                  color: Color(0xffb6b1af),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                            title: Text(
                              "3",
                              style: TextStyle(
                                  height: 0.1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                            leading: Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: Icon(
                                Icons.local_fire_department_rounded,
                                color: Color(0xffEB9F4A),
                                size: 38,
                              ),
                            ),
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            horizontalTitleGap: 10,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 13,
                      ),
                      Container(
                        width: 179,
                        height: 61,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                width: 3, color: const Color(0xffe2ddda))),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 5),
                          child: ListTile(
                            subtitle: Text(
                              "Total XP",
                              style: TextStyle(
                                  height: 2.6,
                                  color: Color(0xffb6b1af),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                            title: Text(
                              "1432",
                              style: TextStyle(
                                  height: 0.1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                            leading: Padding(
                              padding: EdgeInsets.only(bottom: 20),
                              child: Icon(
                                Icons.electric_bolt_sharp,
                                color: Color(0xffECC055),
                                size: 38,
                              ),
                            ),
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            horizontalTitleGap: 10,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 179,
                        height: 61,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                width: 3, color: const Color(0xffe2ddda))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: ListTile(
                            subtitle: const Text(
                              "Current League",
                              style: TextStyle(
                                  height: 2.6,
                                  color: Color(0xffb6b1af),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                            title: const Text(
                              "Bronze",
                              style: TextStyle(
                                  height: 0.1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                            leading: Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Image.asset(
                                  "assets/noto_3rd-place-medal.png"),
                            ),
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            horizontalTitleGap: 10,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 13,
                      ),
                      Container(
                        width: 179,
                        height: 61,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                width: 3, color: const Color(0xffe2ddda))),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: ListTile(
                            subtitle: const Text(
                              "Top 3 Finishes",
                              style: TextStyle(
                                  height: 2.6,
                                  color: Color(0xffb6b1af),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                            title: const Text(
                              "0",
                              style: TextStyle(
                                  height: 0.1,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                            leading: Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Image.asset("assets/bx_medal.png"),
                            ),
                            titleAlignment: ListTileTitleAlignment.titleHeight,
                            horizontalTitleGap: 10,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    "Friends",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 128,
                  ),
                  Text(
                    "ADD FRIENDS",
                    style: TextStyle(fontSize: 20, color: Color(0xff02A1FB)),
                  )
                ],
              ),
            ),
            Container(
              height: 182,
              width: 377,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 3, color: const Color(0xffe2ddda))),
              child: ScrollableTab(
                indicatorColor: const Color(0xff02A1FB),
                labelColor: Colors.black,
                tabs: const [
                  Tab(
                    text: 'Following',
                  ),
                  Tab(
                    text: "Followers",
                  )
                ],
                children: List.generate(
                    2,
                    (index) => Column(
                          children: [
                            Container(
                              constraints: const BoxConstraints(maxHeight: 50),
                              child: ListTile(
                                contentPadding: const EdgeInsets.only(left: 10),
                                trailing: const Icon(
                                  Icons.keyboard_arrow_right_sharp,
                                  color: Color(0xffc9c4c2),
                                  size: 45,
                                ),
                                leading: Container(
                                  height: 31,
                                  width: 31,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: const Color(0xffAB70DF)),
                                  child: const Center(
                                    child: Text(
                                      "H",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ),
                                ),
                                title: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Hardi',
                                      style: TextStyle(
                                          height: 1,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      '4367 XP',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xffb0aba9),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Divider(),
                            Container(
                              constraints: const BoxConstraints(minHeight: 50),
                              child: ListTile(
                                contentPadding: const EdgeInsets.only(left: 10),
                                trailing: const Icon(
                                  Icons.keyboard_arrow_right_sharp,
                                  color: Color(0xffc9c4c2),
                                  size: 45,
                                ),
                                leading: Container(
                                  height: 31,
                                  width: 31,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100),
                                      color: const Color(0xffdf7070)),
                                  child: const Center(
                                    child: Text(
                                      "K",
                                      style: TextStyle(
                                          height: 1,
                                          color: Colors.white,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                                title: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Krishna',
                                      style: TextStyle(
                                          height: 1,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    Text(
                                      '2334 XP',
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Color(0xffb0aba9),
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              height: 228,
              width: 378,
              decoration: BoxDecoration(
                  border: Border.all(width: 3, color: const Color(0xffe2ddda)),
                  color: const Color(0xfffbf5f2),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 27,
                  ),
                  Container(
                    width: 375,
                    height: 115,
                    child: Row(
                      children: [
                        Image.asset("assets/DayflowBlackCat.png"),
                        const Expanded(
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 29),
                                child: Text(
                                  "Invite your friends",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  "Tell your friends it’s free and fun to learn on Mental up!",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
              height: 46,
            )
          ],
        ),
      ),
    );
  }
}
