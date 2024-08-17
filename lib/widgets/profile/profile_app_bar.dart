import 'package:flutter/material.dart';

class ProfileAppBar extends StatelessWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffE5E5E5),
      padding: const EdgeInsets.all(20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Profile",
            style: TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
