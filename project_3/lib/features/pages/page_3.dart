import 'package:flutter/material.dart';
import '/core/all_files.dart';

class VerbalSkills extends StatelessWidget {
  const VerbalSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 25),
              myRowContainer(
                addItem: [
                  const Text('Verbal skills', style: TextStyle(fontSize: 30)),
                  const SizedBox(width: 20),
                  Image.asset('assets/t.png'),
                  const SizedBox(width: 3),
                  const Text('3',
                      style: TextStyle(
                          fontSize: 25, color: ColorPallete.colorDarkOrange)),
                  const SizedBox(width: 20),
                  Image.asset('assets/diamond.png'),
                  const SizedBox(width: 3),
                  const Text('213',
                      style: TextStyle(
                          fontSize: 25, color: ColorPallete.colorBlue)),
                ],
              ),
              const SizedBox(height: 55),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: 211,
                    height: 128,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: ColorPallete.colorDarkGrey,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 55),
                        const Text('Unit 1', style: TextStyle(fontSize: 20)),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/t.png'),
                            myLoadingIndicator(value: 0.3),
                            const Text('3/40',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: ColorPallete.colorLightBlack)),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(top: -50, child: Image.asset('assets/horse.png')),
                ],
              ),
              const SizedBox(height: 25),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myAvatar(
                      imagePath: 'assets/pencil.png',
                      imagePath2: 'assets/t1.png'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      myAvatar(
                          imagePath: 'assets/book.png',
                          imagePath2: 'assets/t1.png'),
                      myAvatar(
                          imagePath: 'assets/bike.png',
                          imagePath2: 'assets/t1.png'),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  myAvatar(
                      imagePath: 'assets/gf.png', imagePath2: 'assets/t.png'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      myAvatar(
                          imagePath: 'assets/gf.png',
                          imagePath2: 'assets/t.png'),
                      myAvatar(
                          imagePath: 'assets/gf.png',
                          imagePath2: 'assets/t.png'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
