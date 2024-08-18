import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

/* 
This widget is used for container completion in home screen 
it has text,crown icon, and Linear Progress Indicator which it is value defiend in home screen
*/
Widget completionContainer({
  required BuildContext context,
  Widget? nextScreen,
  required double value,
}) {
  return GestureDetector(
    onTap: () {
      if (nextScreen != null) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextScreen),
        );
      }
    },
    child: Container(
      height: 220,
      width: 180,
      decoration: BoxDecoration(
        color: const Color.fromARGB(124, 196, 196, 196),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Unit 1",
                style: TextStyle(fontSize: 28),
              ),
              
              Padding(
                padding: const EdgeInsets.only(left: 36, top: 10, bottom: 10),
                child: SizedBox(
                  width: 130,
                  child: LinearProgressIndicator(
                      minHeight: 13,
                      backgroundColor: const Color(0xffC4C4C4),
                      color: const Color(0xffECC055),
                      value: value,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )),
                ),
              ),
            ],
          ),
          const Positioned(
            bottom: 2,
            left: 5,
            child: Icon(
              FluentIcons.crown_20_filled,
              size: 35,
              color: Color(0xffECC055),
            ),
          )
        ]),
      ),
    ),
  );
}
