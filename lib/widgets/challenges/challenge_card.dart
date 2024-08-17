import 'package:flutter/material.dart';

class ChallengeCard extends StatelessWidget {
  final String imagePath;
  final String challengeName;
  final String details;
  const ChallengeCard(
      {super.key,
      required this.imagePath,
      required this.challengeName,
      required this.details});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side:
              const BorderSide(width: 3, color: Color.fromRGBO(0, 0, 0, 0.1))),
      color: const Color.fromRGBO(251, 245, 242, 1),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              imagePath,
              height: 104,
              width: 116,
            ),
            const SizedBox(
              width: 20,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    challengeName,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w600),
                  ),
                  Text(details,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w400)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
