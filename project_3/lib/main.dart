import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text('Hello World!'),
                // Simple progress indicators package with solid colors and gradients
                LinearProgressIndicator(
                  value: 0.5,
                  color: Color.fromRGBO(236, 192, 85, 1),
                  minHeight: 20,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
