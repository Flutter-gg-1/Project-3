import 'package:flutter/material.dart';

import '../theme/my_color.dart';

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.primaryScreenBG,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // TODO move this to a separate widget for better reusability
              Padding(
                padding: const EdgeInsets.only(top: 18, bottom: 40),
                child: Container(
                  color: MyColor.primaryBottomBarBG,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Verbal Skills', style: TextStyle(fontSize: 20)),
                      Row(
                        children: [
                          Align(
                            alignment: Alignment(0, -0.3),
                            child: Image(
                                image: AssetImage('assets/images/crown.png'),
                                height: 30),
                          ),
                          SizedBox(width: 4),
                          Text('3',
                              style:
                                  TextStyle(fontSize: 20, color: MyColor.gold)),
                        ],
                      ),
                      Row(
                        children: [
                          Image(
                              image: AssetImage('assets/images/jewelry.png'),
                              height: 20),
                          SizedBox(width: 5),
                          Text('213',
                              style: TextStyle(
                                  fontSize: 18, color: MyColor.blueLight)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //   ----------------- end header -----------------

              Stack(
                clipBehavior: Clip.none,
                children: [
                  // Background Container
                  Container(
                    width: 211,
                    height: 128,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey),
                    ),
                  ),
                  // Positioned Horse Image
                  Positioned(
                    top: -35,
                    left: 50,
                    child: Image.asset(
                      'assets/images/beep_beep_horse.png',
                      width: 100,
                      height: 70,
                    ),
                  ),
                  // Positioned Title Text
                  Positioned(
                    top: 50,
                    left: 85,
                    child: Text(
                      'Unit 1',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  // Positioned Crown and Progress
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Row(
                      children: [
                        const Align(
                          alignment: Alignment(0, -0.7),
                          child: Image(
                              image: AssetImage('assets/images/crown.png'),
                              height: 20),
                        ),
                        // SizedBox(width: 8),
                        Container(
                          width: 105,
                          height: 12,
                          child: LinearProgressIndicator(
                            value: 3 / 40,
                            backgroundColor: Colors.grey[300],
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          '3/40',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Center(
                child: LessonGrid(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LessonGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 30,
        ),
        LessonItem(
          iconPath: 'assets/images/hands_pencil.png',
          title: 'Intro',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LessonItem(
              iconPath: 'assets/images/hands_book.png',
              title: 'Phrases',
            ),
            SizedBox(width: 16),
            LessonItem(
              iconPath: 'assets/images/dayflow_bike.png',
              // replace with travel icon
              title: 'Travel',
            ),
          ],
        ),
        LockedLesson(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LockedLesson(),
            SizedBox(width: 16),
            LockedLesson(),
          ],
        ),
      ],
    );
  }
}

class LessonItem extends StatelessWidget {
  final String iconPath;
  final String title;

  const LessonItem({
    Key? key,
    required this.iconPath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 110,
              // Adjust the size of the container to match the CircleAvatar
              height: 110,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: MyColor.greyLight, // The color of the border
                  width: 7.0,
                  // The width of the border
                ),
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: MyColor.greenLight,
                child: Image.asset(
                  iconPath,
                  width: 60,
                  height: 60,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Image(
                  image: AssetImage('assets/images/crown.png'), height: 27),
            ),
            Positioned(
              bottom: 10,
              right: 12,
              child: Text('1'),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text(title),
      ],
    );
  }
}

class LockedLesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: 110,
              // Adjust the size of the container to match the CircleAvatar
              height: 110,
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: MyColor.greyLight, // The color of the border
                  width: 7.0,
                  // The width of the border
                ),
              ),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: MyColor.greenLight,
                child: Icon(
                  Icons.lock,
                  color: MyColor.black50,
                  size: 40,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Image(
                  image: AssetImage('assets/images/crown.png'), height: 27),
            ),
          ],
        ),
        SizedBox(height: 5),
        Text('Locked'),
      ],
    );
  }
}
