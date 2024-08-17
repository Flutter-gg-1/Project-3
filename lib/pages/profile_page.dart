import 'package:educational_kids_project/widgets/profile/info.dart';
import 'package:educational_kids_project/widgets/profile/invite_friends.dart';
import 'package:educational_kids_project/widgets/profile/profile_app_bar.dart';
import 'package:educational_kids_project/widgets/profile/statistics.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffFBF5F2),
        body: Expanded(
          child: ListView(
            children: [
              const SizedBox(
                height: 40,
              ),
              const ProfileAppBar(),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      const Info(),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ListTile(
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        leading: Image.asset("lib/assets/profile/celeb.png"),
                        title: const Text("Friends updates"),
                        trailing: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Statistics(),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Friends",
                            style: TextStyle(fontSize: 24),
                          ),
                          Text(
                            "ADD FRIENDS",
                            style: TextStyle(
                                fontSize: 18, color: Color(0xff02A1FB)),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Image.asset("lib/assets/profile/Frame.png"),
                      const SizedBox(
                        height: 20,
                      ),
                      const InviteFriends(),
                    ],
                  )),
            ],
          ),
        ));
  }
}
