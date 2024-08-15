import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: ListTile(
                    leading: Icon(Icons.fireplace),
                    title: Text("Number"),
                  ),
                ),
                Flexible(
                  child: ListTile(
                    leading: Placeholder(
                      child: Text("Box"),
                    ),
                    title: Text("2134XP"),
                  ),
                ),
                Flexible(
                  child: ListTile(
                    leading: Placeholder(
                      child: Text("Heart"),
                    ),
                    title: Text("Infinty"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
