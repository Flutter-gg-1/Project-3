import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import '../../screens/topic_screen.dart';

class UnitsCard extends StatelessWidget {
  final String activityName;
  final int crowns;

  const UnitsCard({
    super.key,
    required this.activityName,
    required this.crowns,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              activityName,
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              width: 10,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/crown.png',
                  height: 27,
                  width: 31,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  '$crowns/40',
                  style: const TextStyle(
                      fontSize: 20, color: Color.fromRGBO(0, 0, 0, 0.6)),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (contex) {
                return TopicScreen(
                  topicName: activityName,
                  crowns: crowns,
                  diamonds: 213,
                );
              }));
            },
            child: Container(
              height: 215,
              width: 169,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(196, 196, 196, 0.4),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text('Unit 1', style: TextStyle(fontSize: 30)),
                    const SizedBox(
                      height: 80,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: GFProgressBar(
                        leading: Image.asset(
                          'assets/images/crown.png',
                        ),
                        percentage: crowns / 40,
                        progressBarColor: const Color.fromRGBO(236, 192, 85, 1),
                        lineHeight: 15,
                      ),
                    ),
                  ]),
            ),
          ),
          const SizedBox(width: 16),
          Container(
            height: 215,
            width: 169,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(196, 196, 196, 0.4),
                borderRadius: BorderRadius.circular(25)),
            child: Center(
              child: SizedBox(
                height: 59,
                width: 47,
                child: Image.asset(
                  'assets/images/lock.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ])
      ]),
    );
  }
}
