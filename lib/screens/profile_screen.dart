import 'package:education_app/widgets/profile/friends_section.dart';
import 'package:education_app/widgets/profile/invite_friends_card.dart';
import 'package:education_app/widgets/profile/profile_card.dart';
import 'package:education_app/widgets/profile/statistics_section.dart';
import 'package:flutter/material.dart';
import '../widgets/home/bottom_navigation.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(251, 245, 242, 1),
        body: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(children: [
              Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 21, horizontal: 25),
                  height: 80,
                  width: 428,
                  color: const Color.fromRGBO(196, 196, 196, 0.4),
                  child: const Center(
                    child: Text(
                      'Profile',
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 0.9),
                          fontSize: 30,
                          fontWeight: FontWeight.w400),
                    ),
                  )),
              const ProfileCard(
                  name: 'Nidhi Pandya',
                  username: 'Nidhi12',
                  dateJoined: 'March 2022'),
              const Divider(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                thickness: 3,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Card(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Color.fromRGBO(0, 0, 0, 0.1),
                                    width: 3),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              color: const Color.fromRGBO(251, 245, 242, 1),
                              child: ListTile(
                                leading:
                                    Image.asset('assets/images/update.png'),
                                title: const Text(
                                  'Friends updates',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400),
                                ),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  color: Color.fromRGBO(0, 0, 0, 0.2),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          const StatisticsSection(),
                          const SizedBox(
                            height: 20,
                          ),
                          const FriendsSection(),
                          const SizedBox(
                            height: 20,
                          ),
                          const InviteFriendsCard()
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ])),
        bottomSheet: const BottomNavigation(active: 3));
  }
}
