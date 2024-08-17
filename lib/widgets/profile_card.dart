import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String username;
  final String dateJoined;
  const ProfileCard(
      {super.key,
      required this.name,
      required this.username,
      required this.dateJoined});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: const TextStyle(fontSize: 30)),
              Text(
                username,
                style: const TextStyle(fontSize: 20, color: Color.fromRGBO(0, 0, 0, 0.5)),
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Image.asset('assets/images/clock.png'),
                  const SizedBox(
                    width: 10,
                  ),
                  Text('Joined $dateJoined',
                      style: const TextStyle(fontSize: 15))
                ],
              )
            ],
          ),
          Container(
            decoration: const BoxDecoration(shape: BoxShape.circle),
            child: Image.asset('assets/images/pfp.png'),
          ),
        ],
      ),
    );
  }
}
