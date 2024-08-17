import 'package:flutter/material.dart';
import '../widgets/topic/units_card.dart';
import '../widgets/home/home_header.dart';
import '../widgets/home/bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color.fromRGBO(251, 245, 242, 1),
        body: Padding(
            padding: EdgeInsets.only(top: 70),
            child: Column(
              children: [
                HomeHeader(points: ['3', '1432 XP', '\u221E']),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 100),
                        child: Column(
                          children: [
                            UnitsCard(
                              activityName: 'Logical Reasoning',
                              crowns: 18,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            UnitsCard(
                              activityName: 'Artistic Thinking',
                              crowns: 35,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            UnitsCard(
                              activityName: 'Verbal Skills',
                              crowns: 3,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
        bottomSheet: BottomNavigation(active: 1));
  }
}
