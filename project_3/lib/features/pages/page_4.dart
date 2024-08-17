import 'package:flutter/material.dart';
import 'package:project_3/core/all_files.dart';

class ProfileClass extends StatelessWidget {
  ProfileClass({super.key});

  final List<String> imagePathList = [
    'assets/fire.png',
    'assets/b.png',
    'assets/img3.png',
    'assets/img0.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 35),
              myRowContainer(
                addItem: [
                  const Text('Profile', style: TextStyle(fontSize: 30))
                ],
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Nidhi Pandya', style: TextStyle(fontSize: 30)),
                        Text('Nidhi12',
                            style: TextStyle(
                                fontSize: 20,
                                color: ColorPallete.colorLightBlack)),
                        Row(
                          children: [
                            Icon(Icons.watch_later, color: Colors.grey),
                            Text('  Joined March 2022',
                                style: TextStyle(fontSize: 15)),
                          ],
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 90 / 2,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_zrGcaJgQScgv3rKD7mrj9GCGEhYOI3XNUSUnH9D1Tk7g_nYNvnZdsZz2v5EgdqsZCII&usqp=CAU'),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: myContainer(
                  color: ColorPallete.colorWhite,
                  width: 378,
                  height: 73,
                  listWidget: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/happy.png'),
                        const SizedBox(width: 10),
                        const Text('Friends updates'),
                        const SizedBox(width: 120),
                        const Icon(Icons.arrow_forward_ios,
                            size: 20, color: Colors.grey),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Padding(
                padding: EdgeInsets.only(left: 25 / 2),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Statistics', style: TextStyle(fontSize: 30))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  myContainer(
                    padding: const EdgeInsets.only(left: 25 / 2),
                    alignment: Alignment.centerLeft,
                    color: ColorPallete.colorWhite,
                    width: 175,
                    height: 85,
                    listWidget: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(imagePathList[0]),
                          const SizedBox(width: 10),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('3', style: TextStyle(fontSize: 20)),
                              Text('day Streak',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: ColorPallete.colorLightBlack)),
                              Text(''),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  myContainer(
                    padding: const EdgeInsets.only(left: 25 / 2),
                    alignment: Alignment.centerLeft,
                    color: ColorPallete.colorWhite,
                    width: 175,
                    height: 85,
                    listWidget: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(imagePathList[1]),
                          const SizedBox(width: 10),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('1432', style: TextStyle(fontSize: 20)),
                              Text('Total XP',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: ColorPallete.colorLightBlack)),
                              Text(''),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  myContainer(
                    padding: const EdgeInsets.only(left: 25 / 2),
                    alignment: Alignment.centerLeft,
                    color: ColorPallete.colorWhite,
                    width: 175,
                    height: 85,
                    listWidget: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(imagePathList[2]),
                          const SizedBox(width: 10),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Bronze', style: TextStyle(fontSize: 20)),
                              Text('Current League',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: ColorPallete.colorLightBlack)),
                              Text(''),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  myContainer(
                    padding: const EdgeInsets.only(left: 25 / 2),
                    alignment: Alignment.centerLeft,
                    color: ColorPallete.colorWhite,
                    width: 175,
                    height: 85,
                    listWidget: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(imagePathList[3]),
                          const SizedBox(width: 10),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('0', style: TextStyle(fontSize: 20)),
                              Text('Top 3 Finishes',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: ColorPallete.colorLightBlack)),
                              Text(''),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Friends', style: TextStyle(fontSize: 30)),
                  Text('ADD FRIENDS',
                      style: TextStyle(
                          fontSize: 20, color: ColorPallete.colorBlue)),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  border:
                      Border.all(color: ColorPallete.colorDarkGrey, width: 2),
                  color: ColorPallete.colorWhite,
                ),
                width: 377,
                height: 210,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25 / 2),
                  child: Column(
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('FOLLOWING',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: ColorPallete.colorBlue,
                                      fontWeight: FontWeight.bold)),
                              Text('FOLLOWERS', style: TextStyle(fontSize: 15)),
                            ],
                          ),
                          Divider(),
                          ListTile(
                              leading: CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                              ),
                              title: Text('Krishna',
                                  style: TextStyle(fontSize: 20)),
                              subtitle: Text('2334 XP'),
                              trailing: Icon(Icons.arrow_forward_ios)),
                          Divider(),
                          ListTile(
                              leading: CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                              ),
                              title:
                                  Text('Hardi', style: TextStyle(fontSize: 20)),
                              subtitle: Text('4367 XP'),
                              trailing: Icon(Icons.arrow_forward_ios)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  border:
                      Border.all(color: ColorPallete.colorDarkGrey, width: 2),
                  color: ColorPallete.colorWhite,
                ),
                width: 377,
                height: 200,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('assets/cat.png'),
                        const Text(
                            "Invite your friends Tell\n your friends it’s free\n and fun to learn\n on Mental up!"),
                      ],
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorPallete.colorBlue,
                        ),
                        onPressed: () {},
                        child: const Text('INVITE FRIENDS',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white))),
                  ],
                ),
              ),
              const Text(''),
            ],
          ),
        ),
      ),
      bottomNavigationBar: myRowContainer(
        addItem: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
                onPressed: () {
                  (context).goTo(const YourScore());
                },
                icon: const Icon(Icons.home, size: 35)),
            IconButton(
                onPressed: () {
                  (context).goTo(const VerbalSkills());
                },
                icon: const Icon(Icons.arrow_outward, size: 35)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person,
                    size: 35, color: ColorPallete.colorPurple)),
            IconButton(
                onPressed: () {
                  (context).goTo(const YourScore());
                },
                icon: const Icon(Icons.settings, size: 35)),
          ]),
        ],
      ),
    );
  }
}
