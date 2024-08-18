import 'package:flutter/material.dart';
import 'package:p_1_kids_game/src/widgets/bottom_navigation_bar.dart';
import 'package:p_1_kids_game/src/widgets/statistics.dart';

import '../theme/my_color.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.primaryScreenBG,
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18, bottom: 28),
            child: Container(
              color: MyColor.primaryBottomBarBG,
              height: 50,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Text(
                        'Profile',
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            child: ListView(
              children: [
                Row(
                  children: [
                    const Flexible(
                      child: ListTile(
                        tileColor: Colors.transparent,
                        title: Text("Nidhi Pandya",
                            style: TextStyle(fontSize: 25)),
                        subtitle: Text("Nidhi12",
                            style: TextStyle(
                                fontSize: 18, color: MyColor.black50)),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 10),
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile_photo.png'),
                          radius: 45,
                        ))
                  ],
                ),
                const Row(
                  children: [
                    SizedBox(width: 15),
                    Icon(Icons.watch_later,
                        // TODO
                        color: Color.fromRGBO(0, 0, 0, 0.5),
                        size: 15),
                    SizedBox(width: 5),
                    Text("Joined March 2022", style: TextStyle(fontSize: 15)),
                    const Divider(
                      thickness: 2,
                    ),
                  ],
                ),
                const Divider(
                  thickness: 2,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Card(
                        // --------- Friends updates start -----------
                        // TODO change color
                        color: const Color(0xffFBF5F2),
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        shape: const RoundedRectangleBorder(
                            side: BorderSide(
                                //TODO Change color
                                width: 1,
                                color: Color.fromRGBO(0, 0, 0, 0.1)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: ListTile(
                            leading: Image.asset(
                              "assets/images/confetti.png",
                              width: 35,
                            ),
                            title: const Text(
                              "Friends updates",
                              style: TextStyle(fontSize: 18),
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_outlined,
                              // TODO Change color
                              color: Color.fromRGBO(0, 0, 0, 0.2),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      // --------- Friends updates end -----------

                      // --------- Statistics Start -----------
                      Text("Statistics", style: TextStyle(fontSize: 25)),
                      const SizedBox(
                        height: 10,
                      ),
                      const Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Statistics(
                                  icon: "assets/images/streak.png",
                                  title: "3",
                                  subtitle: "Day Streak"),
                              Statistics(
                                  icon: "assets/images/totalxp.png",
                                  title: "1432",
                                  subtitle: "Total XP"),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Statistics(
                                  icon: "assets/images/bronze.png",
                                  title: "Bronze",
                                  subtitle: "Current League"),
                              Statistics(
                                  icon: "assets/images/top3.png",
                                  title: "0",
                                  subtitle: "Top 3 Finishes"),
                            ],
                          )
                        ],
                      ),

                      // --------- Statistics end -----------

                      const SizedBox(
                        height: 25,
                      ),

                      // --------- Friends start -----------

                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Friends",
                            style: TextStyle(fontSize: 25),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                            "ADD FRIENDS",
                            style: TextStyle(
                                fontSize: 19,
                                // TODO Change color
                                color: MyColor.blueLight,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 340,
                            height: 193,
                            //TODO edit this height to match the actual image size
                            decoration: BoxDecoration(
                                border: Border.all(
                                    // TODO Change color
                                    color: const Color.fromRGBO(0, 0, 0, 0.1),
                                    width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            child: const Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("FOLLOWING",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xff02A1FB))),
                                    Text(
                                      "FOLLOWERS",
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(0, 0, 0, 0.5),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                LinearProgressIndicator(
                                  minHeight: 3,
                                  value: 0.5,
                                  color: Color(0xff02A1FB),
                                ),
                                ListTile(
                                  minTileHeight: 1,
                                  leading: CircleAvatar(
                                    backgroundColor: Color(0xffAB70DF),
                                    child: Text(
                                      "H",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  ),
                                  title: Text(
                                    "Hardi",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  subtitle: Text(
                                    "4367 XP",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromRGBO(0, 0, 0, 0.4)),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Color.fromRGBO(0, 0, 0, 0.2),
                                  ),
                                ),
                                Divider(
                                  thickness: 3,
                                  color: Color.fromRGBO(0, 0, 0, 0.1),
                                ),
                                ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: Color(0xffDF7070),
                                    child: Text(
                                      "K",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.white),
                                    ),
                                  ),
                                  title: Text(
                                    "Krishna",
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  subtitle: Text(
                                    "2334 XP",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromRGBO(0, 0, 0, 0.4)),
                                  ),
                                  trailing: Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: Color.fromRGBO(0, 0, 0, 0.2),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      // --------- Friends End -----------

                      const SizedBox(
                        height: 15,
                      ),

                      // --------- invite friends start -----------
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10.5),
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          border: Border.all(
                              // TODO Change color
                              width: 3,
                              color: Color.fromRGBO(0, 0, 0, 0.1)),
                          borderRadius: BorderRadius.circular(20),
                          // TODO Change color
                          color: const Color(0xffFBF5F2),
                        ),
                        child: Column(
                          children: [
                            Card(
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 0,
                                  color: Colors.transparent,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              // TODO change color
                              color: Color(0xffFBF5F2),
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              child: ListTile(
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 5),
                                leading: FittedBox(
                                  fit: BoxFit.none,
                                  child: Image.asset(
                                    "assets/images/cat.png",
                                    width: 222,
                                    // height: 116,
                                  ),
                                ),
                                title: const Text(
                                  "Invite your friends",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: const Text(
                                  "Tell your friends it’s free and fun to learn on Mental up!",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    height: 1.3,
                                    fontSize: 16,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                                width: 321,
                                height: 47,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "INVITE FRIENDS",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  style: ButtonStyle(
                                      elevation: WidgetStateProperty.all(5),
                                      shadowColor: WidgetStateProperty.all(
                                          // TODO Change color
                                          Color(0xff02A1FB)),
                                      backgroundColor: WidgetStateProperty.all(
                                          // TODO Change color
                                          Color(0xff02A1FB)),
                                      shape: WidgetStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)))),
                                )),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      )),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
