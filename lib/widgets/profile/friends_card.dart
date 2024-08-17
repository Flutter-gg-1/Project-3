import 'package:flutter/material.dart';

class FriendsCard extends StatelessWidget {
  final String abbrev;
  final String name;
  final String points;
  final Color color;
  const FriendsCard(
      {super.key,
      required this.abbrev,
      required this.name,
      required this.points,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20, right: 19),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 31,
                    width: 31,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color,
                    ),
                    child: Center(
                        child: Text(
                      abbrev,
                      style: const TextStyle(color: Colors.white),
                    )),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '$points XP',
                        style: const TextStyle(
                            fontSize: 15, color: Color.fromRGBO(0, 0, 0, 0.4)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color.fromRGBO(0, 0, 0, 0.2),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
