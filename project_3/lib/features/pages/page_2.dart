import 'package:flutter/material.dart';
import '/core/all_files.dart';

class YourScore extends StatelessWidget {
  const YourScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 75),
              myRowContainer(addItem: [
                Image.asset('assets/fire.png'),
                Image.asset('assets/xp.png'),
                Image.asset('assets/heart.png'),
              ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
              const SizedBox(height: 53),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Logical reasoning ',
                    style:
                        TextStyle(fontSize: 35, color: ColorPallete.colorBlack),
                  ),
                  Image.asset('assets/t.png'),
                  const Text(
                    '18 / 40',
                    style: TextStyle(
                      fontSize: 20,
                      color: ColorPallete.colorLightBlack,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 26),
              myContainer(
                title: 'Your Score',
                listWidget: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
