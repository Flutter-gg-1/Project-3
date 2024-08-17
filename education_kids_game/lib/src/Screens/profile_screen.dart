import 'package:education_kids_game/src/customWidgets/custom_card_widget.dart';
import 'package:education_kids_game/src/customWidgets/custom_icons_icons.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            bottom: PreferredSize(
              preferredSize: const Size(double.infinity, 71),
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 71,
                padding: const EdgeInsets.symmetric(horizontal: 50),
                color: const Color(0xffE5E5E5),
                child: const Text(
                  "Profile",
                  style: TextStyle(
                      fontSize: 30, fontFamily: "fonts/Roboto-Regular.ttf"),
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Stack(clipBehavior: Clip.none, children: [
                  ListTile(
                    titleTextStyle: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontFamily: "fonts/Roboto-Regular.ttf"),
                    subtitleTextStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black54,
                        fontFamily: "fonts/Roboto-Regular.ttf"),
                    title: Text("Nidhi Pandya"),
                    subtitle: Text("Nidhi12"),
                  ),
                  Positioned(
                    left: 15,
                    top: 70,
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time_filled_outlined,
                          size: 17,
                          color: Color.fromARGB(255, 122, 122, 122),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "Joined March 2022",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "fonts/Roboto-Regular.ttf"),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      right: 17,
                      child:
                          Image(image: AssetImage("assets/profile_img.png"))),
                ]),
                const SizedBox(height: 35),
                const Divider(
                  color: Colors.black12,
                  thickness: 2,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(15),
                  width: 378,
                  height: 69,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 3),
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    leading: Image.asset("assets/celebrate.png"),
                    title: const Text("Friends update",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "fonts/Roboto-Regular.ttf")),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.black26,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(left: 30),
                  child: const Text("Statistics",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "fonts/Roboto-Regular.ttf")),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomCardWidget(
                        title: "3",
                        leading: Icon(
                          CustomIcons.fire,
                          size: 30,
                          color: Color(0xffEB9F4A),
                        ),
                        subTitle: "Day Streak"),
                    CustomCardWidget(
                        title: "1432",
                        leading: Icon(
                          CustomIcons.lighting,
                          size: 30,
                          color: Color(0xffECC055),
                        ),
                        subTitle: "Total XP")
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomCardWidget(
                        title: "Bronze",
                        leading: Image.asset("assets/medal.png"),
                        subTitle: "Current League"),
                    CustomCardWidget(
                        title: "0",
                        leading: Image.asset("assets/bx_medal.png"),
                        subTitle: "Top 3 Finishes")
                  ],
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Friends",
                          style: TextStyle(
                              fontSize: 30,
                              fontFamily: "fonts/Roboto-Regular.ttf")),
                      Text(
                        "ADD FRIENDS",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: "fonts/Roboto-Regular.ttf",
                            fontWeight: FontWeight.w600,
                            color: Color(0xff02A1FB)),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 170,
                  width: 377,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 3),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Column(
                    children: [
                      TabBar(
                        indicatorColor: Color(0xff02A1FB),
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorWeight: 3,
                        unselectedLabelStyle: TextStyle(
                            color: Colors.black45,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: "fonts/Roboto-Regular.ttf"),
                        labelStyle: TextStyle(
                            color: Color(0xff02A1FB),
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: "fonts/Roboto-Regular.ttf"),
                        tabs: [
                          Tab(
                            text: "FOLLOWING",
                          ),
                          Tab(
                            text: "FOLLOWRES",
                          )
                        ],
                      ),
                      Expanded(
                        child: ListTile(
                          shape: Border(
                              bottom:
                                  BorderSide(color: Colors.black12, width: 3)),
                          leading:
                              Image(image: AssetImage("assets/account_h.png")),
                          title: Text(
                            "Hardi",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "fonts/Roboto-Regular.ttf"),
                          ),
                          subtitle: Text(
                            "4367 XP",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                                fontFamily: "fonts/Roboto-Regular.ttf"),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          leading:
                              Image(image: AssetImage("assets/account_k.png")),
                          title: Text(
                            "Krishna",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: "fonts/Roboto-Regular.ttf"),
                          ),
                          subtitle: Text(
                            "2334 XP",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black54,
                                fontFamily: "fonts/Roboto-Regular.ttf"),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.black54,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  padding: const EdgeInsets.all(10),
                  height: 228,
                  width: 378,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 3),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/Black_Cat.png"),
                          const SizedBox(
                            height: 150,
                            width: 180,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Invite your friends",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "fonts/Roboto-Regular.ttf",
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  maxLines: 3,
                                  overflow: TextOverflow.visible,
                                  "Tell your friends it’s free and fun to learn on Mental up!",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "fonts/Roboto-Regular.ttf"),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: ElevatedButton(
                            style: ButtonStyle(
                                shadowColor: WidgetStateProperty.all(
                                    const Color.fromARGB(77, 2, 160, 251)),
                                shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12))),
                                fixedSize: WidgetStateProperty.all(
                                    const Size(321, 47)),
                                backgroundColor: WidgetStateProperty.all(
                                    const Color(0xff02A1FB))),
                            onPressed: () {},
                            child: const Text(
                              "INVITE FRIENDS",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "fonts/Roboto-Regular.ttf",
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600),
                            )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40)
              ],
            ),
          )),
    );
  }
}
