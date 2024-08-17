import 'package:flutter/material.dart';

import 'friends_card.dart';

class FriendsSection extends StatefulWidget {
  const FriendsSection({super.key});

  @override
  State<FriendsSection> createState() => _FriendsSectionState();
}

class _FriendsSectionState extends State<FriendsSection> {
  bool isFollowing = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Friends',
              style: TextStyle(fontSize: 30),
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                'ADD FRIENDS',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(2, 161, 251, 1)),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border:
                Border.all(width: 3, color: const Color.fromRGBO(0, 0, 0, 0.1)),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isFollowing = true;
                      });
                    },
                    child: Text(
                      'FOLLOWING',
                      style: TextStyle(
                          fontSize: 15,
                          color: isFollowing
                              ? const Color.fromRGBO(2, 161, 251, 1)
                              : null),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isFollowing = false;
                      });
                    },
                    child: Text(
                      'FOLLOWERS',
                      style: TextStyle(
                          fontSize: 15,
                          color: !isFollowing
                              ? const Color.fromRGBO(2, 161, 251, 1)
                              : null),
                    ),
                  ),
                ],
              ),
              Container(
                color: Colors.grey,
                height: 3,
                child: Divider(
                  endIndent: isFollowing ? 178 : null,
                  indent: !isFollowing ? 178 : null,
                  thickness: 3,
                  color: Color.fromRGBO(2, 161, 251, 1),
                ),
              ),
              if (isFollowing) ...[
                const FriendsCard(
                  abbrev: 'H',
                  name: 'Hardi',
                  points: '4367',
                  color: Color.fromRGBO(171, 112, 223, 1),
                ),
                const Divider(
                  thickness: 3,
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                ),
                const FriendsCard(
                  abbrev: 'K',
                  name: 'Krishna',
                  points: '2334',
                  color: Color.fromRGBO(223, 112, 112, 1),
                )
              ] else ...[
                const FriendsCard(
                  abbrev: 'A',
                  name: 'Abdulaziz',
                  points: '1000',
                  color: Color.fromRGBO(171, 112, 223, 1),
                ),
                const Divider(
                  thickness: 3,
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                ),
                const FriendsCard(
                  abbrev: 'K',
                  name: 'Khalid',
                  points: '2024',
                  color: Color.fromRGBO(223, 112, 112, 1),
                )
              ],
            ],
          ),
        )
      ],
    );
  }
}
