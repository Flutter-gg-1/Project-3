import 'package:educational_kids_project/widgets/bottom_navigation_bar.dart';
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
                height: 70,
              ),
              Container(
                color: const Color(0xffE5E5E5),
                padding: const EdgeInsets.all(20),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Profile",
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Nidhi Pandya",
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                              ),
                              const Text(
                                "Nidhi12",
                                style:
                                    TextStyle(fontSize: 18, color: Colors.grey),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Image.asset("lib/assets/profile/clock.png"),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text("Joined March 2022")
                                ],
                              )
                            ],
                          ),
                          Image.asset("lib/assets/profile/girl.png"),
                        ],
                      ),
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
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Statistics",
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              leading:
                                  Image.asset("lib/assets/profile/flame.png"),
                              title: const Text("3"),
                              subtitle: const Text("Day Streak"),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: ListTile(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              leading: Image.asset(
                                  "lib/assets/profile/lightning.png"),
                              title: const Text("1432"),
                              subtitle: const Text("Total XP"),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ListTile(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              leading: Image.asset(
                                  "lib/assets/profile/bronzemedal.png"),
                              title: const Text("Bronze"),
                              subtitle: const Text(
                                "Current League",
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: ListTile(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.grey, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              leading: Image.asset(
                                  "lib/assets/profile/purplemedal.png"),
                              title: const Text("1432"),
                              subtitle: const Text("Total XP"),
                            ),
                          ),
                        ],
                      ),
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
                      Container(
                        height: 200,
                        width: 350,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: Colors.grey,
                              width: 2), // Border color and width
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("lib/assets/profile/cat.png"),
                                const Column(
                                  children: [
                                    Text(
                                      "Invite your friends",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Tell your friends it’s \nfree and fun to learn \non Mental up!",
                                      style: TextStyle(fontSize: 13),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                height: 40,
                                width: 300,
                                decoration: BoxDecoration(
                                    color: const Color(0xff02A1FB),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Color(0x8002A1FB),
                                          offset: Offset(0, 4),
                                          blurRadius: 10),
                                    ]),
                                child: const Center(
                                  child: Text(
                                    "INVITE FRIENDS",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ))
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ));
  }
}
