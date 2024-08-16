import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LockPadge extends StatelessWidget {
  const LockPadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      height: MediaQuery.of(context).size.height / 4,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffC4C4C4), width: 8),
          shape: BoxShape.circle),
      child: Stack(
        alignment: const Alignment(0, .6),
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width / 3,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffFFFFFF), width: 8),
                  color: const Color(0xFF72BFC7),
                  shape: BoxShape.circle),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(FontAwesomeIcons.lock),
                  ],
                ),
              ),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Stack(
                alignment: Alignment(.3, 1),
                children: [
                  Icon(color: Color(0xffECC055), FontAwesomeIcons.crown),
                  Text(""),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
