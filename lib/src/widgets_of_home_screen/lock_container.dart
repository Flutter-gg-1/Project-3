import 'package:flutter/material.dart';

class LockContainer extends StatelessWidget {
  const LockContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                children: [
                  Container(
                    width: 179,
                    height: 227,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 217, 217, 217),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    margin: const EdgeInsets.only(left: 24),
                    child: Center(
                      child: Image.asset('assets/home_screen_icons/lock.png'),
                    ),
                  )
                ],
              );
  }
}