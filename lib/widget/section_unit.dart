import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class SectionUnit extends StatelessWidget {
  final double progress;
  const SectionUnit({
    super.key,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, -4),
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          width: 211,
          height: 128,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color(0xFFE9E8E8),
            boxShadow: [BoxShadow(blurRadius: 2.5)]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Unit 1',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    AntDesign.crown_fill,
                    color: Colors.amber,
                    size: 30,
                  ),
                  SizedBox(
                      width: 100,
                      child: LinearProgressIndicator(
                        value: progress,
                        valueColor: const AlwaysStoppedAnimation<Color>(Colors.amber),
                        minHeight: 8,
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                      )),
                  const Text(
                    '   3/40',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
            width: 124,
            height: 98,
            child: Image.asset('lib/assest/image/hourse.png')),
      ],
    );
  }
}
