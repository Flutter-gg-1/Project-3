import 'package:flutter/material.dart';

class ChallengeCard extends StatelessWidget {
  final String title;
  final String description;
  final String img;

  const ChallengeCard({
    super.key,
    required this.title,
    required this.description,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Container(
        width: 350,
        height: 105,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
                //TODO change color
                color: const Color(0xff000000).withOpacity(0.1),
                width: 3)),
        child: Row(
          children: [
            Image.asset(
              img,
              height: 110,
              width: 120,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(description, style: TextStyle(fontSize: 15)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
