import 'package:flutter/material.dart';
import '../../core/all_files.dart';

class Challenges extends StatelessWidget {
  const Challenges({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              myRowContainer(
                addItem: [
                  const Text('Challenges', style: TextStyle(fontSize: 30))
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: myRowContainer(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        addItem: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.home, size: 35)),
            IconButton(
                onPressed: () {
                  (context).goTo(const Challenges());
                },
                icon: const Icon(Icons.arrow_outward,
                    size: 35, color: ColorPallete.colorLightRed)),
            IconButton(
                onPressed: () {
                  (context).goTo(ProfileClass());
                },
                icon: const Icon(Icons.person, size: 35)),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.settings, size: 35)),
          ]),
        ],
      ),
    );
  }
}
