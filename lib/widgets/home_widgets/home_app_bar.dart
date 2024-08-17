import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffE5E5E5),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Image.asset('lib/assets/home/flame.png'),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "3",
                style: TextStyle(fontSize: 25, color: Color(0xffEB9F4A)),
              )
            ],
          ),
          Row(
            children: [
              Image.asset('lib/assets/home/box.png'),
              const SizedBox(
                width: 15,
              ),
              const Text(
                "1432 XP",
                style: TextStyle(fontSize: 25, color: Color(0xff338F9B)),
              )
            ],
          ),
          Row(
            children: [
              Image.asset('lib/assets/home/heart.png'),
            ],
          ),
        ],
      ),
    );
  }
}
