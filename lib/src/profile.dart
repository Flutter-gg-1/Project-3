import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:icons_plus/icons_plus.dart';
import 'widgets_of_profile_screen/list_tile_profile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbf5f2),
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(75),
              child: Container(
                height: 71,
                width: 428,
                color: const Color(0xffE5E5E5),
                child: const Center(
                  child: Text(
                    "Profile",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 30),
                  ),
                ),
              ))),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 151,
              width: 428,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Nidhi Pandya",
                        style: TextStyle(fontSize: 26, color: Colors.black),
                      ),
                      Text(
                        "Nidhi12",
                        style: TextStyle(
                            fontSize: 16, color: Colors.black.withOpacity(0.5)),
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.watch_later,
                            color: Color.fromARGB(255, 116, 114, 114),
                            size: 15,
                          ),
                          Padding(padding: EdgeInsets.only(left: 6)),
                          Text("Joined March 2022",
                              style:
                                  TextStyle(fontSize: 11, color: Colors.black))
                        ],
                      )
                    ],
                  ),
                  Image.asset('assets/profile_icons/profilePic.png'),
                ],
              ),
            ),
            const Divider(),
            Container(
              height: 69,
              width: 378,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xffE5E5E5), width: 3)),
              child: const ListTile(
                leading: Icon(Icons.celebration, color: Colors.red, size: 40,),
                title: Text("Friends updates",
                    style: TextStyle(
                        fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500)),
                trailing: Icon(Icons.arrow_forward_ios_rounded, color: Color.fromARGB(255, 192, 190, 190),),
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.only(right: 250),
              child: Text(
                "Statistics",
                style: TextStyle(fontSize: 26, color: Colors.black),
              ),
            ),
            const SizedBox(height: 12,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListTileProfileWidget(
                  title: Text("3", style: TextStyle(fontSize: 20),),
                  icon: Icon(HeroIcons.fire, color: Color(0xffEB9F4A), size: 40,) ,
                  subtitle: Text("Day Streak", style: TextStyle(fontSize: 12),),
                ),
                ListTileProfileWidget(
                  title: Text("1432", style: TextStyle(fontSize: 20),),
                  icon: Icon(Icons.bolt_outlined, color: Color(0xffECC055), size: 40,),
                  subtitle: Text("Total XP", style: TextStyle(fontSize: 12),),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(bottom: 16)),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListTileProfileWidget(
                  title: Text("Bronze", style: TextStyle(fontSize: 20),),
                  icon: Icon(FontAwesome.medal_solid),
                  subtitle: Text("Current League", style: TextStyle(fontSize: 12),),
                ),
                ListTileProfileWidget(
                  title: Text("0", style: TextStyle(fontSize: 20),),
                  icon: Icon(FontAwesome.medal_solid),
                  subtitle: Text("Top 3 Finishes", style: TextStyle(fontSize: 12),),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(bottom: 40)),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Friends",
                  style: TextStyle(fontSize: 26, color: Colors.black),
                ),
                Text(
                  "ADD FRIENDS",
                  style: TextStyle(fontSize: 26, color: Color(0xff02A1FB), fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 16,),
            Container(
              height: 230,
              width: 377,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xffE5E5E5), width: 3)),
              child: Expanded(
                child: ContainedTabBarView(
                  tabs: const [
                    Text('FOLLOWING'),
                    Text('FOLLOWERS'),
                  ],
                  tabBarProperties: const TabBarProperties(indicatorColor: Color(0xff02A1FB), labelColor: Color(0xff02A1FB)),
                  views: const [
                    Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Color(0xffAB70DF),
                            child: Text('H', style: TextStyle(color: Color(0xffffffff), fontSize: 15),),
                          ),
                          title: Text("Hardi",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 0, 0, 0))),
                          subtitle: Text("4367 XP"),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                        Divider(),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Color(0xffDF7070),
                            child: Text('K', style: TextStyle(color: Color(0xffffffff), fontSize: 15)),
                          ),
                          title: Text("Krishna",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 0, 0, 0))),
                                  subtitle: Text("2334 XP"),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Color(0xffAB70DF),
                            child: Text('H', style: TextStyle(color: Color(0xffffffff), fontSize: 15),),
                          ),
                          title: Text("Hardi",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Color.fromARGB(255, 0, 0, 0))),
                          subtitle: Text("4367 XP"),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                        Divider(),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Color(0xffDF7070),
                            child: Text('K', style: TextStyle(color: Color(0xffffffff), fontSize: 15)),
                          ),
                          title: Text("Krishna",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 0, 0, 0))),
                                  subtitle: Text("2334 XP"),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ],
                    ),
                  ],
                  onChange: (index) => print(index),
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Container(
              height: 228,
              width: 378,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xffE5E5E5), width: 3)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ListTile(
                    leading: Image.asset('assets/profile_icons/Cat.png', width: 120,height: 116, fit: BoxFit.fill,),
                    title: const Text("Invite your friends",
                        style: TextStyle(
                            fontSize: 20, color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.w500)),
                    subtitle: const Text(
                        "Tell your friends it’s free and fun to learn on Mental up!", style: TextStyle(
                            fontSize: 20, color: Color.fromARGB(255, 0, 0, 0))),
                  ),
                  Container(
                    height: 47,
                    width: 321,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: const Color(0xff02A1FB), 
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xff02A1FB),
                            blurRadius: 4,
                            offset: Offset(0, 2)
                          )
                        ]),
                    child: const Center(
                      child: Text(
                        "INVITE FRIENDS",
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
