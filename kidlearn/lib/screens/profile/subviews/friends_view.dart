import 'package:flutter/material.dart';

class FriendsView extends StatelessWidget {
  const FriendsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        const Row(
          children: [Text('Friends', style: TextStyle(fontSize: 24))],
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
