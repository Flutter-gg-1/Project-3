import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Statistics",
            style: TextStyle(fontSize: 24),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: ListTile(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: Image.asset("lib/assets/profile/flame.png"),
                title: const Text("3"),
                subtitle: const Text("Day Streak"),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: ListTile(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: Image.asset("lib/assets/profile/lightning.png"),
                title: const Text("1432"),
                subtitle: const Text("Total XP"),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: ListTile(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: Image.asset("lib/assets/profile/bronzemedal.png"),
                title: const Text("Bronze"),
                subtitle: const Text(
                  "Current League",
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: ListTile(
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.grey, width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                leading: Image.asset("lib/assets/profile/purplemedal.png"),
                title: const Text("1432"),
                subtitle: const Text("Total XP"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
