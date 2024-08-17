import 'package:flutter/material.dart';

class InviteFriendsCard extends StatelessWidget {
  const InviteFriendsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 228,
      width: 378,
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 17),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border:
              Border.all(color: const Color.fromRGBO(0, 0, 0, 0.1), width: 3),
          color: const Color.fromRGBO(251, 245, 242, 1)),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/blackcat.png'),
              const SizedBox(
                width: 40,
              ),
              const Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Invite your friends',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Tell your friends it’s free and fun to learn on Mental up!',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 18,
          ),
          SizedBox(
            height: 47,
            width: 321,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(2, 161, 251, 1),
                    shadowColor: const Color.fromRGBO(2, 161, 251, 0.5),
                    elevation: 4),
                onPressed: () {},
                child: const Text(
                  'INVITE FRIENDS',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
