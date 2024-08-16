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
                myRowContainer(addItem: const [
                  Text('Hello World!'),
                ]),
                const Text('Hello World!'),
                // Simple progress indicators package with solid colors and gradients
                myLoadingIndicator(value: 0.5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
