import 'package:flutter/material.dart';

class Locked extends StatelessWidget {
  const Locked({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 125,
              width: 125,
              decoration: BoxDecoration(
                  color: const Color(0xffC4C4C4),
                  borderRadius: BorderRadius.circular(60)),
            ),
            Positioned(
              top: 7.5,
              left: 7.5,
              child: Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60)),
              ),
            ),
            Positioned(
              top: 12.5,
              left: 12.5,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: const Color(0xff72BFC7),
                    borderRadius: BorderRadius.circular(60)),
                child: Image.asset("lib/assets/home/lock.png"),
              ),
            ),
            Positioned(
              bottom: 15,
              right: 0,
              child: Image.asset("lib/assets/verbal_skills/crown.png"),
            ),
            const Positioned(bottom: 15, right: 12, child: Text("1"))
          ],
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
