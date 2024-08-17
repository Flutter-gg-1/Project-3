import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class SubjectCard extends StatelessWidget {
  final int crowns;
  const SubjectCard({super.key, required this.crowns});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      width: 220,
      child: Stack(
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.only(top: 50, bottom: 10),
              height: 128,
              width: 211,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(196, 196, 196, 0.4),
                  borderRadius: BorderRadius.circular(25)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Unit 1', style: TextStyle(fontSize: 20)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 26),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: GFProgressBar(
                              leading: Image.asset('assets/images/crown.png'),
                              percentage: crowns / 40,
                              progressBarColor:
                                  const Color.fromRGBO(236, 192, 85, 1),
                              lineHeight: 15,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            '$crowns/40',
                            style: const TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(0, 0, 0, 0.6)),
                          ),
                        ],
                      ),
                    )
                  ]),
            ),
          ),
          Positioned(
              left: 44,
              right: 44,
              top: 0,
              child: Image.asset('assets/images/horse.png')),
        ],
      ),
    );
  }
}
