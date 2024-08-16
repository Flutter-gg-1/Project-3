import 'package:flutter/material.dart';

class UnitWidget extends StatelessWidget {
  final double prograss;
  const UnitWidget({super.key, required this.prograss});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 221, 220, 220),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        padding: const EdgeInsets.all(10),
        alignment: Alignment.topCenter,
        height: 227,
        width: 179,
        child: Column(
          children: [
            const Text(
              "Unit 1",
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 120),
            Row(
              children: [
                Image.asset("assets/icons/crown_icon.png"),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 14,
                  width: 120,
                  margin: const EdgeInsets.only(top: 12),
                  decoration: BoxDecoration(
                      color: const Color(0xffC4C4C4),
                      borderRadius: BorderRadius.circular(30)),
                  child: Container(
                    width: prograss,
                    height: 14,
                    decoration: BoxDecoration(
                        color: const Color(0xffECC055),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                )
              ],
            ),
          ],
        ));
  }
}

class LockUnit extends StatelessWidget {
  const LockUnit({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 221, 220, 220),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        height: 227,
        width: 179,
        child: Image.asset("assets/icons/lock_icon.png"));
  }
}
