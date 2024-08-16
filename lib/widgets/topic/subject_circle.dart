import 'package:flutter/material.dart';

class SubjectCircle extends StatelessWidget {
  final String? imagePath;
  final String? label;
  final bool isLocked;
  const SubjectCircle(
      {super.key, this.imagePath, this.label, this.isLocked = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            height: 140,
            width: 170,
            decoration: const BoxDecoration(),
            child: Stack(
              children: [
                Center(
                  child: Container(
                    height: 140,
                    width: 140,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(196, 196, 196, 1),
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Container(
                            height: 125,
                            width: 125,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                          ),
                        ),
                        if (!isLocked)
                          Center(
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(114, 191, 199, 1)),
                              child: Image.asset(imagePath!),
                            ),
                          )
                        else
                          Center(
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color.fromRGBO(114, 191, 199, 1)),
                              child: Image.asset('assets/images/lock.png'),
                            ),
                          )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 91,
                  left: 108,
                  right: 1,
                  bottom: 22,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          'assets/images/crown2.png',
                          height: 27,
                          width: 31,
                        ),
                      ),
                      if (!isLocked)
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            '1',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          if (!isLocked)
            Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                label!,
                style: const TextStyle(fontSize: 20),
              ),
            )
        ],
      ),
    );
  }
}
