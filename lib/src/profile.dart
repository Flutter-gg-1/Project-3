import 'package:flutter/material.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'widgets_of_profile_screen/friends_list_tile.dart';
import 'widgets_of_profile_screen/invite_friends.dart';
import 'widgets_of_profile_screen/list_tile_profile.dart';
import 'widgets_of_profile_screen/profile_info.dart';

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
            const ProfileInfo(),
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
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListTileProfileWidget(
                  title: "3",
                  icon: Image.asset('assets/home_screen_icons/fire.png'),
                  subtitle: "Day Streak"
                ),
                ListTileProfileWidget(
                  title: "1432",
                  icon: Image.asset('assets/profile_icons/bolt.png'),
                  subtitle: "Total XP",
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(bottom: 16)),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ListTileProfileWidget(
                  title: "Bronze",
                  icon: Image.asset('assets/profile_icons/noto_3rd-place-medal.png'),
                  subtitle: "Current League",
                ),
                ListTileProfileWidget(
                  title: "0",
                  icon: Image.asset('assets/profile_icons/bx_medal.png'),
                  subtitle: "Top 3 Finishes",
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
                        FriendsListTile(letter: 'H', subtitle: '4367 XP', title: 'Hardi', color: Color(0xffAB70DF),),
                        Divider(),
                        FriendsListTile(letter: 'K', subtitle: '2334 XP', title: 'Krishna', color: Color(0xffDF7070),),
                      ],
                    ),
                    Column(
                      children: [
                        FriendsListTile(letter: 'H', subtitle: '4367 XP', title: 'Hardi', color: Color(0xffAB70DF),),
                        Divider(),
                        FriendsListTile(letter: 'K', subtitle: '2334 XP', title: 'Krishna', color: Color(0xffDF7070),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            const InviteFriends(),
          ],
        ),
      )),
    );
  }
}
