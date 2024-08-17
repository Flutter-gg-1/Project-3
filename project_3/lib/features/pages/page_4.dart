import 'package:flutter/material.dart';
import 'package:project_3/core/all_files.dart';

class ProfileClass extends StatelessWidget {
  const ProfileClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            const SizedBox(height: 35),
            myRowContainer(
              addItem: [const Text('Profile', style: TextStyle(fontSize: 30))],
            ),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Nidhi Pandya'),
                  CircleAvatar(
                    radius: 90 / 2,
                    backgroundImage: NetworkImage(
                        'https://i.ibb.co/9b0GqLW/WhatsApp-Image-2022-07-11-12-54-23.jpg'),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
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
                onPressed: () {
                  (context).goTo(const ProfileClass());
                },
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
