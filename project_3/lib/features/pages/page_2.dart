import 'package:flutter/material.dart';
import '/core/all_files.dart';

class YourScore extends StatefulWidget {
  const YourScore({super.key});

  @override
  State<YourScore> createState() => _YourScoreState();
}

class _YourScoreState extends State<YourScore> {
  List<String> titleName = [
    'Logical reasoning',
    'Artistic thinking',
    'Verbal skills'
  ];
  List<String> titleScore = ['18 / 40', '35 / 40', '3 / 40'];
  List<double> score = [0.5, 0.8, 0.2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(height: 25),
                myRowContainer(addItem: [
                  Image.asset('assets/fire.png'),
                  Image.asset('assets/xp.png'),
                  Image.asset('assets/heart.png'),
                ], mainAxisAlignment: MainAxisAlignment.spaceEvenly),
                const SizedBox(height: 25),
                for (int i = 0; i < titleName.length; i++)
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              titleName[i],
                              style: const TextStyle(
                                  fontSize: 35, color: ColorPallete.colorBlack),
                            ),
                            Row(
                              children: [
                                Image.asset('assets/t.png'),
                                const SizedBox(width: 5),
                                Text(
                                  titleScore[i],
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: ColorPallete.colorLightBlack,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              (context).goTo(const VerbalSkills());
                            },
                            child: myContainer(
                              title: 'Unit 1',
                              listWidget: [
                                Image.asset('assets/t.png'),
                                myLoadingIndicator(value: score[i]),
                              ],
                            ),
                          ),
                          const SizedBox(width: 5),
                          myContainerImage(),
                          const SizedBox(height: 15),
                        ],
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: myRowContainer(
        addItem: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
                onPressed: () {
                  (context).goTo(const YourScore());
                },
                icon: const Icon(Icons.home,
                    size: 35, color: ColorPallete.colorLightGreen)),
            IconButton(
                onPressed: () {
                  (context).goTo(const VerbalSkills());
                },
                icon: const Icon(Icons.arrow_outward,
                    size: 35, color: ColorPallete.colorLightRed)),
            IconButton(
                onPressed: () {
                  (context).goTo(const ProfileClass());
                },
                icon: const Icon(Icons.person,
                    size: 35)),
            IconButton(
                onPressed: () {
                  (context).goTo(const YourScore());
                },
                icon: const Icon(Icons.settings, size: 35)),
          ]),
        ],
      ),
    );
  }
}
