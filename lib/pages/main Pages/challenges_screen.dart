import 'package:flutter/material.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          color: const Color(0xFFe9e8e8),
          width: double.infinity,
          child: const Center(
            child: Text("Challenges"),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.1,
          height: MediaQuery.of(context).size.height / 7,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: const Color(0xffbababa),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: ListTile(
            leading: Image.asset("assets/Group.png"),
            title: const Text("Complete 1000 word streak"),
            subtitle: const Text("Win 1000XP along with 300 diamonds."),
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [Text(style: TextStyle(fontSize: 24), "Achievements")],
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.1,
          height: MediaQuery.of(context).size.height / 7,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: const Color(0xffbababa),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: ListTile(
            leading:
                Image.asset("assets/Stuck at Home Vertical Painting 1.png"),
            title: const Text("Lorem Ipsum "),
            subtitle: const Text(
                "is simply dummy text of the printing and typesetting industry."),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.1,
          height: MediaQuery.of(context).size.height / 7,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: const Color(0xffbababa),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: ListTile(
            leading: Image.asset("assets/Pebble People Plant 2.png"),
            title: const Text("Lorem Ipsum "),
            subtitle: const Text(
                "is simply dummy text of the printing and typesetting industry."),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 1.1,
          height: MediaQuery.of(context).size.height / 7,
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: const Color(0xffbababa),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: ListTile(
            leading: Image.asset("assets/Pebble People Basketball.png"),
            title: const Text("Lorem Ipsum "),
            subtitle: const Text(
                "is simply dummy text of the printing and typesetting industry."),
          ),
        ),
      ],
    );
  }
}
