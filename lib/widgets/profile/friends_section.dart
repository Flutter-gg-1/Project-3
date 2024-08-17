import 'package:flutter/material.dart';

import 'friends_card.dart';

class FriendsSection extends StatelessWidget {
  const FriendsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Friends',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'ADD FRIENDS',
              style: TextStyle(
                  fontSize: 20, color: Color.fromRGBO(2, 161, 251, 1)),
            ),
          ],
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border:
                Border.all(width: 3, color: const Color.fromRGBO(0, 0, 0, 0.1)),
          ),
          child: const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'FOLLOWING',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'FOLLOWERS',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Divider(
                thickness: 3,
                color: Color.fromRGBO(2, 161, 251, 1),
              ),
              FriendsCard(
                abbrev: 'H',
                name: 'Hardi',
                points: '4367',
                color: Color.fromRGBO(171, 112, 223, 1),
              ),
              Divider(
          thickness: 3,
          color: Color.fromRGBO(0, 0, 0, 0.1),
        ),
              FriendsCard(
                abbrev: 'K',
                name: 'Krishna',
                points: '2334',
                color: Color.fromRGBO(223, 112, 112, 1),
              ),
            ],
          ),
        )
      ],
    );
  }
}
