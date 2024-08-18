import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Text(""),
        backgroundColor: const Color(0xFFe9e8e8),
        bottom: const PreferredSize(
          preferredSize: Size(double.infinity, 10),
          child: Center(child: Text("Profile")),
        ),
      ),
      body: Expanded(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 12),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 4,
                      color: Color(0xFFe2ddda),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: const Flexible(
                        child: Column(
                          children: [
                            ListTile(
                              title: Text("Nidhi Pandya"),
                              subtitle: Text("Nidhi12"),
                            ),
                            Row(
                              children: [
                                Icon(FontAwesomeIcons.clock),
                                Text(
                                    style: TextStyle(fontSize: 12),
                                    "Joined March 2022")
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Image.asset(fit: BoxFit.cover, "assets/Ellipse 1.png"),
                  ],
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 18),
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  border: Border.all(
                    color: const Color(0xFFe2ddda),
                  ),
                ),
                child: const Row(
                  children: [
                    Expanded(
                      child: ListTile(
                        leading: Icon(FontAwesomeIcons.cakeCandles),
                        title: Text("Friends updates"),
                      ),
                    ),
                    Icon(FontAwesomeIcons.arrowRight)
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Text(
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                        "Statistics"),
                  ),
                ],
              ),
              //Statistcs
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                          width: 4,
                          color: const Color(0xFFe2ddda),
                        ),
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2.3,
                        child: const ListTile(
                          leading: Icon(
                              color: Color(0xffeb9f4a), FontAwesomeIcons.fire),
                          title: Text("3"),
                          subtitle: Text("Day Streak"),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                          width: 4,
                          color: const Color(0xFFe2ddda),
                        ),
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2.3,
                        child: const ListTile(
                          leading: Icon(
                              color: Color(0xFfecc055), FontAwesomeIcons.bolt),
                          title: Text("1432"),
                          subtitle: Text("Total XP"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                          width: 4,
                          color: const Color(0xFFe2ddda),
                        ),
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2.3,
                        child: const ListTile(
                          leading: Icon(
                              color: Color(0xfff79429), FontAwesomeIcons.medal),
                          title: Text("Bronze"),
                          subtitle: Text("Current League"),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(
                          width: 4,
                          color: const Color(0xFFe2ddda),
                        ),
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2.3,
                        child: const ListTile(
                          leading: Icon(
                              color: Color(0xff0023dc), FontAwesomeIcons.medal),
                          title: Text("0"),
                          subtitle: Text("Top 3 Finishes"),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Friends"),
                  TextButton(
                    onPressed: () {},
                    child: const Text("ADD FRIENDS"),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                padding: const EdgeInsets.only(bottom: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: const Color(0xFFe2ddda),
                  ),
                ),
                child: Column(
                  children: [
                    const DefaultTabController(
                      length: 2,
                      child: TabBar(
                        indicatorColor: Color(0xff02A1FB),
                        labelColor: Color(0xff02A1FB),
                        tabs: [
                          Tab(
                            text: "FOLLOWING",
                          ),
                          Tab(
                            text: "FOLLOWERS",
                          ),
                        ],
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: ListTile(
                            leading: CircleAvatar(
                              child: Text("H"),
                            ),
                            title: Text("Hardi"),
                            subtitle: Text("4367 XP"),
                          ),
                        ),
                        Icon(FontAwesomeIcons.arrowRight)
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color(0xFFe2ddda),
                        ),
                      ),
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: ListTile(
                            leading: CircleAvatar(
                              child: Text("K"),
                            ),
                            title: Text("Krishna"),
                            subtitle: Text("2334 XP"),
                          ),
                        ),
                        Icon(FontAwesomeIcons.arrowRight)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFe2ddda),
                  ),
                ),
                width: MediaQuery.of(context).size.width / 1.2,
                height: 115,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(
                      child: ListTile(
                        leading: Image.asset("assets/Dayflow Black Cat.png"),
                        title: const Text(
                            "Invite your friends Tell your friends it’s free and fun to learn on Mental up!"),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(
                          Color(0xff02A1FB),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                          style: TextStyle(color: Colors.white),
                          "INVITE FRIENDS"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
