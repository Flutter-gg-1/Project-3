import 'package:educational_kids_game/src/widgets/frinds_tilelist.dart';
import 'package:educational_kids_game/src/widgets/statistics_card.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFBF5F2),
        appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: const Color(0xffFBF5F2),
            toolbarHeight: 30,
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(50),
                child: Container(
                    height: 50,
                    color: const Color(0xffE5E5E5),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Profile", style: TextStyle(fontSize: 28))
                        ])))),
        body: Center(
          child: ListView(children: [
            Container(
              padding: const EdgeInsets.only(right: 20, top: 8),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromARGB(124, 196, 196, 196),
                    width: 4.0,
                  ),
                ),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nidhi Pandya",
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          "Nidhi12",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(156, 0, 0, 0)),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(
                            Icons.access_time_filled_outlined,
                            color: Color.fromRGBO(0, 0, 0, 0.5),
                          ),
                          title: Text(
                            "Joined March 2022",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20),
                  Image.asset(
                    "assets/Ellipse 1.png",
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ),
            //card for frinds updates
            Card(
                margin: const EdgeInsets.only(left: 25, right: 25, top: 30),
                elevation: 0,
                color: const Color(0xffFBF5F2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(
                    color: Color.fromARGB(124, 196, 196, 196),
                    width: 3.0,
                  ),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.only(left: 30, right: 10),
                  leading: Image.asset(
                    "assets/🎊.png",
                    height: 35,
                  ),
                  title: const Text(
                    "Friends updates",
                    style: TextStyle(fontSize: 20),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                  ),
                )),
            //statistics with deffrent card
            const Padding(
              padding: EdgeInsets.only(
                left: 30,
                top: 30,
              ),
              child: Text(
                "Statistics",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  statisticsCard(
                    leadingValue: const Icon(
                      HeroIcons.fire,
                      color: Color(0xffEB9F4A),
                      size: 35,
                    ),
                    titleValue: "3",
                    subtitleValue: "Day Streak",
                  ),
                  statisticsCard(
                    leadingValue: const Icon(
                      Icons.bolt,
                      color: Color(0xffECC055),
                      size: 50,
                    ),
                    titleValue: "1432",
                    subtitleValue: "Total XP",
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  statisticsCard(
                    leadingValue:
                        Image.asset("assets/noto_3rd-place-medal.png"),
                    titleValue: "Bronze",
                    subtitleValue: "Current League",
                  ),
                  statisticsCard(
                    leadingValue: Image.asset("assets/bx_medal.png"),
                    titleValue: "0",
                    subtitleValue: "Top 3 Finishes",
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 30,
                top: 20,
              ),
              child: Row(
                children: [
                  Text(
                    "Friends",
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    width: 125,
                  ),
                  Text(
                    "ADD FRIENDS",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff02A1FB)),
                  ),
                ],
              ),
            ),

            Container(
                margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
                height: 200,
                decoration: BoxDecoration(
                  color: const Color(0xffFBF5F2),
                  border: Border.all(
                    color: const Color.fromARGB(124, 196, 196, 196),
                    width: 3.0,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ContainedTabBarView(
                    tabBarProperties: const TabBarProperties(
                      indicatorColor: Color(0xff02A1FB),
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelStyle: TextStyle(color: Color(0xff02A1FB)),
                      height: 40,
                    ),
                    tabBarViewProperties: TabBarViewProperties(),
                    tabs: const [
                      Text(
                        "FOLLOWING",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "FOLLOWERS",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                    views: [
                      Column(
                        children: [
                          frindszTileList(
                              titalValue: "Hardi",
                              subtitleValue: "4367 XP",
                              letter: "H",
                              colorValue: const Color(0xffAB70DF)),
                          const Divider(),
                          frindszTileList(
                              titalValue: "Krishna",
                              subtitleValue: "2334 XP",
                              letter: "K",
                              colorValue: const Color(0xffDF7070)),
                        ],
                      ),
                      const Column(
                        children: [
                          ListTile(
                            leading: Text(""),
                          ),
                        ],
                      ),
                    ])),
            Card(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 25),
              elevation: 0,
              color: const Color(0xffFBF5F2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(
                  color: Color.fromARGB(124, 196, 196, 196),
                  width: 3.0,
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Column(
                  children: [
                    ListTile(
                        leading: SizedBox(
                          width: 100,
                          height: 100,
                          child: FittedBox(
                            fit: BoxFit.none,
                            child: Image.asset("assets/Dayflow Black Cat.png"),
                          ),
                        ),
                        title: const Text("Invite your friends",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                        subtitle: const Text(
                            "Tell your friends it's free and fun to learn on Mental up!",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ))),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff02A1FB),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 80, vertical: 4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 8,
                          shadowColor: const Color.fromARGB(255, 0, 162, 255)),
                      child: const Text(
                        "INVITE FRIENDS",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ));
  }
}
