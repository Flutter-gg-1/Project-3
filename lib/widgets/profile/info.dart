import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Nidhi Pandya",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            const Text(
              "Nidhi12",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Image.asset("lib/assets/profile/clock.png"),
                const SizedBox(
                  width: 10,
                ),
                const Text("Joined March 2022")
              ],
            )
          ],
        ),
        Image.asset("lib/assets/profile/girl.png"),
      ],
    );
  }
}
