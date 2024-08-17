import 'package:flutter/material.dart';

class CircleContainers extends StatelessWidget {
  final String photoPath;
  const CircleContainers({super.key, required this.photoPath});

  @override
  Widget build(BuildContext context) {
    return Stack(
                  children: [
                    Container(
                      height: 140,
                      width: 140,
                      margin: const EdgeInsets.all(35),
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xffC4C4C4)),
                    ),
                    Container(
                       height: 120,
                      width: 120,
                      margin: const EdgeInsets.all(45),
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xfffbf5f2)),
                    ),
                    Container(
                       height: 110,
                      width: 110,
                      margin: const EdgeInsets.all(50),
                      decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xff72BFC7),),
                      child: Image.asset(photoPath, scale: 1.2,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 120, left: 145),
                      child: Image.asset('assets/home_screen_icons/crown.png'),
                    ),
                  ],
                );
  }
}