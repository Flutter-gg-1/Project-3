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
              const SizedBox(height: 25),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  border:
                      Border.all(color: ColorPallete.colorDarkGrey, width: 2),
                  color: ColorPallete.colorWhite,
                ),
                width: 377,
                height: 150,
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Image(
                          image: AssetImage('assets/g.png'),
                          width: 116,
                          height: 105),
                    ),
                    Flexible(
                      child: Text(
                          'Complete 1000 word streak Win 1000XP along with 300 diamonds.'),
                    ),
                  ],
                ),
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
                onPressed: () {
                  (context).goTo(const YourScore());
                },
                icon: const Icon(Icons.home, size: 35)),
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
