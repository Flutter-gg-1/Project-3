import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> names = ['Hardi', 'Krishna'];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Container(
                width: size.width,
                height: size.height * 0.10,
                color: const Color(0xffE5E5E5),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                )),
            const SizedBox(
              height: 25,
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                children: [
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
                          style: TextStyle(color: Colors.black45, fontSize: 20),
                          textAlign: TextAlign.left,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.access_time_filled,
                              color: Colors.black54,
                              size: 15,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Joined March 2022",
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: CircleAvatar(
                      child: Image.asset("assets/images/image6.png"),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black12,
              thickness: 3,
            ),
            Container(
              width: size.width * 0.9,
              height: size.height * 0.08,
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black12, width: 3)),
              child: ListTile(
                leading: Image.asset(
                  "assets/icons/icon8.png",
                  height: 25,
                ),
                title: const Text(
                  "Friends updates",
                  style: TextStyle(fontSize: 20),
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black12,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: const EdgeInsets.only(left: 12),
              child: const Text(
                "Statistics",
                style: TextStyle(fontSize: 30),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: size.width * 0.45,
                  height: size.height * 0.09,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black12, width: 3)),
                  child: ListTile(
                    leading: Image.asset(
                      "assets/icons/icon3.png",
                      height: 25,
                    ),
                    title: const Text(
                      "3",
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: const Text("Day Streak"),
                  ),
                ),
                Container(
                  width: size.width * 0.45,
                  height: size.height * 0.09,
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black12, width: 3)),
                  child: ListTile(
                    leading: Image.asset(
                      "assets/icons/icon11.png",
                      height: 25,
                    ),
                    title: const Text(
                      "1432",
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: const Text("Total XP"),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: size.width * 0.45,
                  height: size.height * 0.09,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black12, width: 3)),
                  child: ListTile(
                    leading: Image.asset(
                      "assets/icons/icon9.png",
                      height: 25,
                    ),
                    title: const Text(
                      "Bronze",
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: const Text(
                      "Current League",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
                Container(
                  width: size.width * 0.45,
                  height: size.height * 0.09,
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black12, width: 3)),
                  child: ListTile(
                    leading: Image.asset(
                      "assets/icons/icon10.png",
                      height: 25,
                    ),
                    title: const Text(
                      "0",
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: const Text(
                      "Top 3 Finishes",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 12, right: 12),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Friends",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "ADD FRIENDS",
                    style: TextStyle(fontSize: 20, color: Color(0xff02A1FB)),
                  )
                ],
              ),
            ),
            Container(
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.black12),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  const DefaultTabController(
                      length: 2,
                      child: TabBar(
                          indicatorColor: Colors.blue,
                          unselectedLabelColor: Colors.black38,
                          labelColor: Colors.blue,
                          tabs: [
                            Tab(
                              child: Text(
                                "FOLLOWING",
                              ),
                            ),
                            Tab(
                              child: Text(
                                "FOLLOWERS",
                              ),
                            )
                          ])),
                  SizedBox(
                    width: size.width * 0.9,
                    height: size.width * 0.3,
                    child: ListView(
                        padding: const EdgeInsets.only(bottom: 10),
                        children: [
                          ListTile(
                            leading: Container(
                              width: 25,
                              height: 25,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Text(
                                names[0][0],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            title: Text(
                              names[0],
                              style: const TextStyle(fontSize: 15),
                            ),
                            subtitle: const Text("4367 XP"),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black12,
                            ),
                          ),
                          const Divider(
                            color: Colors.black12,
                            thickness: 2,
                            height: 20,
                          ),
                          ListTile(
                            leading: Container(
                              width: 25,
                              height: 25,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Text(
                                names[1][0],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                            title: Text(
                              names[1],
                              style: const TextStyle(fontSize: 15),
                            ),
                            subtitle: const Text("2334 XP"),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black12,
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 28,
            ),
            Container(
              width: size.width * 0.9,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black12, width: 3)),
              child: Column(
                children: [
                  ListTile(
                    leading: Image.asset("assets/images/image7.png"),
                    title: const Text(
                      "Invite your friends",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      "Tell your friends it’s free and fun to learn on Mental up!",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      width: size.width * 0.65,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "INVITE FRIENDS",
                            style: TextStyle(color: Colors.white),
                          )))
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
