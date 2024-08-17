
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class SectionOptions extends StatelessWidget {
  final String title;
  final double progress;
  final String currentSteps;
  final Widget nextScreen;
  const SectionOptions({
    super.key,
    required this.title,
    required this.progress,
    required this.currentSteps, 
    required this.nextScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 25),
              ),
              const SizedBox(
                width: 40,
              ),
              const Icon(
                AntDesign.crown_fill,
                color: Colors.amber,
                size: 30,
              ),
              Text(
                '$currentSteps/40',
                style: const TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
                   ),
         ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => nextScreen,));
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  width: 179,
                  height: 227,
                  decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: const Color(0xFFC4C4C4).withOpacity(0.4),
                  ),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Unit 1',
                        style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),
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
                                backgroundColor: const Color.fromARGB(255, 211, 204, 204),
                                value: progress,
                                valueColor:
                                    const AlwaysStoppedAnimation<Color>(Colors.amber),
                                minHeight: 8,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  width: 179,
                  height: 227,
                  decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    color: const Color(0xFFC4C4C4).withOpacity(0.4),
                  ),
                  child: const Center(
                    child: Icon(
                      AntDesign.lock_fill,
                      size: 60,
                      color: Colors.black54,
                    ),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
