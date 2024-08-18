import 'package:educational_kids_game/widget/profile.dart';
import 'package:educational_kids_game/widget/statistics_row.dart';
import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            color: const Color(0xFFE5E5E5).withOpacity(0.8),
            width: double.infinity,
            height: 60,
            child: const Center(
              child: Text(
                'Profile',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w400),
              ),
            )),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 28,
                ),
                const Profile(),
                const SizedBox(
                  height: 25,
                ),
                const Divider(
                  thickness: 3,
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 25, right: 25, top: 16, bottom: 35),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all()),
                  child: const ListTile(
                    leading: Text(
                      '🎉',
                      style: TextStyle(fontSize: 30),
                    ),
                    title: Text('Friends updates',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        )),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
                Column(
                  children: [
                    const Align(
                      alignment: Alignment(-0.8, 0),
                      child: Text(
                        'Statistics',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w400),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        StatisticsRow(
                          title: '3',
                          subtitle: 'Day Streak',
                          iconAsText: '🔥',
                        ),
                        StatisticsRow(
                          title: '1432',
                          subtitle: 'Total XP',
                          iconAsText: '⚡️',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        StatisticsRow(
                          title: 'Bronze',
                          subtitle: 'Current League',
                          iconAsText: '🥉',
                        ),
                        StatisticsRow(
                          title: '0',
                          subtitle: 'Top 3 Finshes',
                          iconAsText: '🏅',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text(
                          'Friends     ',
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w400),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'ADD FRIENDS',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF02A1FB)),
                            ))
                      ],
                    )
                  ],
                ),
                Container(
                    width: 377,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all()),
                    child: const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'FOLLOWING',
                              style: TextStyle(color: Colors.blue),
                            ),
                            Text(
                              'FOLLOWERS',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Divider(
                          color: Color.fromARGB(255, 122, 178, 224),
                          thickness: 1,
                        ),
                        ListTile(
                          leading: CircleAvatar(
                              backgroundColor: Colors.purple,
                              child: Text(
                                'H',
                                style: TextStyle(color: Colors.white),
                              )),
                          title: Text(
                            'Hardi',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('4367 XP'),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey,
                          ),
                        ),
                        Divider(),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.brown,
                            child: Text('K',
                                style: TextStyle(color: Colors.white)),
                          ),
                          title: Text('Krishna',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          subtitle: Text('2334 XP'),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 28),
                  width: 378,
                  height: 228,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all()),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image.asset(
                          'lib/assest/image/cat.png',
                          width: 165,
                          height: 116,
                        ),
                        title: const Text(
                          'Invite your freinds',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        subtitle: const Text(
                          "Tell your freinds it's free and fun to learn on Mental up!",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                      ),
                      Container(
                        width: 321,
                        height: 47,
                        decoration: BoxDecoration(
                          color: const Color(0xFF02A1FB),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'INVITE FREINDS',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
