import 'package:flutter/material.dart';
import 'core/all_files.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: ColorPallete.colorLightGrey,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                rowContainer(addItem: const [
                  Text('Hello World!'),
                ]),
                const Text('Hello World!'),
                // Simple progress indicators package with solid colors and gradients
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 90),
                  child: Transform(
                    transform: Matrix4.skewX(-0.5),
                    child: const LinearProgressIndicator(
                      value: 0.5,
                      color: Color.fromRGBO(236, 192, 85, 1),
                      minHeight: 14,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
