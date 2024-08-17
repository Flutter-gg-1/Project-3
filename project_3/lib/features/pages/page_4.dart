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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Nidhi Pandya', style: TextStyle(fontSize: 30)),
                      Text('Nidhi12',
                          style: TextStyle(
                              fontSize: 20,
                              color: ColorPallete.colorLightBlack)),
                      Row(
                        children: [
                          Icon(Icons.watch_later, color: Colors.grey),
                          Text('  Joined March 2022',
                              style: TextStyle(fontSize: 15)),
                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 90 / 2,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_zrGcaJgQScgv3rKD7mrj9GCGEhYOI3XNUSUnH9D1Tk7g_nYNvnZdsZz2v5EgdqsZCII&usqp=CAU'),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15),
            const Divider(),
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
