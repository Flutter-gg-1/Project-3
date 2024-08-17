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
                      color: const Color(0xffC4C4C4).withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    margin: const EdgeInsets.only(left: 24),
                    child: Center(
                      child: Image.asset('assets/home_screen_icons/lock.png', width: 47, height: 59,),
                    ),
                  )
                ],
              );
  }
}