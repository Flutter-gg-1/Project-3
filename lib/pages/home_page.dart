import 'package:educational_kids_project/widgets/home_widgets/artistic_thinking.dart';
import 'package:educational_kids_project/widgets/home_widgets/home_app_bar.dart';
import 'package:educational_kids_project/widgets/home_widgets/logical_reasoning.dart';
import 'package:educational_kids_project/widgets/home_widgets/verbal_skills.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      body: ListView(
        children: const [
          SizedBox(
            height: 40,
          ),
          HomeAppBar(),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                LogicalReasoning(),
                SizedBox(
                  height: 20,
                ),
                ArtisticThinking(),
                SizedBox(
                  height: 20,
                ),
                VerbalSkills()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
