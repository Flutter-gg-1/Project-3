import 'package:flutter/material.dart';
import '/core/all_files.dart';

class VerbalSkills extends StatelessWidget {
  const VerbalSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                    style:
                        TextStyle(fontSize: 25, color: ColorPallete.colorBlue)),
              ],
            ),
            const SizedBox(height: 25),
            Stack(
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
                      const Expanded(child: Text(' ')),
                      const Text('Unit 1', style: TextStyle(fontSize: 20)),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/t.png'),
                          myLoadingIndicator(value: 0.5),
                        ],
                      ),
                    ],
                  ),
                ),
                // Image.asset('assets/horse.png'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
