import 'package:flutter/material.dart';
import 'package:project3/widgets/bottom_navbar.dart';
import 'package:project3/widgets/statistic.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      body: SafeArea(
          child: Column(
        children: [
          Container(
              alignment: Alignment.center,
              width: double.maxFinite,
              padding: const EdgeInsets.symmetric(vertical: 15),
              margin: const EdgeInsets.only(top: 28),
              color: const Color(0xccE5E5E5),
              child: const Text(
                "Profile",
                style: TextStyle(
                    fontSize: 30, color: Color.fromRGBO(0, 0, 0, 0.9)),
              )),
          Flexible(
            child: ListView(
              children: [
                Row(
                  children: [
                    const Flexible(
                      child: ListTile(
                        tileColor: Colors.transparent,
                        title: Text("Nidhi Pandya",
                            style: TextStyle(fontSize: 30)),
                        subtitle: Text("Nidhi12",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromRGBO(0, 0, 0, 0.5))),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.only(right: 10, top: 30),
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/avatar.png'),
                          radius: 45,
                        ))
                  ],
                ),
                const Row(
                  children: [
                    SizedBox(width: 13),
                    Icon(Icons.watch_later,
                        color: Color.fromRGBO(0, 0, 0, 0.5), size: 15),
                    SizedBox(width: 5),
                    Text("Joined March 2022", style: TextStyle(fontSize: 15)),
                  ],
                ),
                const Divider(),
                Card(
                  color: const Color(0xffFBF5F2),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(
                          width: 3, color: Color.fromRGBO(0, 0, 0, 0.1)),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: ListTile(
                      leading: Image.asset("assets/images/confetti.png"),
                      title: const Text(
                        "Friends updates",
                        style: TextStyle(fontSize: 20),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 15, bottom: 15),
                  child: Text("Statistics", style: TextStyle(fontSize: 30)),
                ),
                const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Statistic(
                            icon: "assets/images/streak.png",
                            title: "3",
                            subtitle: "Day Streak"),
                        Statistic(
                            icon: "assets/images/lightning.png",
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
                        Statistic(
                            icon: "assets/images/bronze.png",
                            title: "Bronze",
                            subtitle: "Current League"),
                        Statistic(
                            icon: "assets/images/medal.png",
                            title: "0",
                            subtitle: "Top 3 Finishes"),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Friends",
                      style: TextStyle(fontSize: 30),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "ADD FRIENDS",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff02A1FB),
                          fontWeight: FontWeight.w500),
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
                      width: 377,
                      height: 193,
                      decoration: BoxDecoration(
                          border: Border.all(
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                const SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                          border: Border.all(
                              width: 3, color: Color.fromRGBO(0, 0, 0, 0.1)),
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffFBF5F2),),
                      
                  child: Column(
                    children: [
                      Card.filled(
                        color: Color(0xffFBF5F2),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        child: ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 15),
                          leading: FittedBox(
                            fit: BoxFit.none,
                            child: Image.asset("assets/images/cat.png", width: 222, height: 116,),
                          ),
                          title: const Text(
                            "Invite your friends",
                            style:
                                TextStyle(fontSize: 20, fontWeight: FontWeight.w700,height: 2),
                          ),
                          subtitle: const Text(
                            "Tell your friends it’s free and fun to learn on Mental up!",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1.3,
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                  SizedBox(width: 321, height: 47,child: ElevatedButton(onPressed: (){}, child: const Text("INVITE FRIENDS", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),),style: ButtonStyle(elevation: WidgetStateProperty.all(5),shadowColor: WidgetStateProperty.all<Color>(Color(0xff02A1FB)),backgroundColor: WidgetStateProperty.all<Color>(Color(0xff02A1FB)),shape: WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)))),)),
                      SizedBox(height: 20,),
                    ],
                  ),
                ),
                // Card.outlined(
                //   shape: RoundedRectangleBorder(
                //       side: const BorderSide(
                //           width: 3, color: Color.fromRGBO(0, 0, 0, 0.1)),
                //       borderRadius: BorderRadius.circular(20)),
                //   color: const Color(0xffFBF5F2),
                //   child: Column(
                //     children: [
                //       Row(
                //         children: [
                //           Image.asset(
                //             "assets/images/cat.png",
                //             width: 222,
                //             height: 116,
                //           ),
                //           const Expanded(
                //             child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Text(
                //                   "Invite your friends",
                //                   style: TextStyle(
                //                       fontSize: 20,
                //                       fontWeight: FontWeight.w700),
                //                 ),
                //                 Text(
                //                   "Tell your friends it’s free and fun to learn on Mental up!",
                //                   style: TextStyle(
                //                       fontSize: 20, color: Colors.black),
                //                 ),
                //               ],
                //             ),
                //           )
                //         ],
                //       ),
                //       SizedBox(height: 40,),
                //       SizedBox(
                //         width: 321,
                //         height: 47,
                //         child: ElevatedButton(
                //             onPressed: () {},
                //             style: ElevatedButton.styleFrom(
                //                 backgroundColor: const Color(0xff02A1FB),
                //                 shape: RoundedRectangleBorder(
                //                     borderRadius: BorderRadius.circular(12))),
                //             child: const Text(
                //               "INVITE FRIENDS",
                //               style:
                //                   TextStyle(color: Colors.white, fontSize: 20),
                //             )),
                //       )
                //     ],
                //   ),
                // ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ],
      )),
      bottomNavigationBar:
          const BottomNavbar(currentIndex: 2, iconColor: Color(0xffAB70DF)),
    );
  }
}
