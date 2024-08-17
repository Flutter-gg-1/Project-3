import 'package:flutter/material.dart';

class InviteFriends extends StatelessWidget {
  const InviteFriends({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 350,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border:
            Border.all(color: Colors.grey, width: 2), // Border color and width
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
                    style: TextStyle(fontWeight: FontWeight.bold),
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
    );
  }
}
