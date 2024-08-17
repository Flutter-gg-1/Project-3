import 'package:educational_kids_project/widgets/verbal_skills/Travel.dart';
import 'package:educational_kids_project/widgets/verbal_skills/hourse_box.dart';
import 'package:educational_kids_project/widgets/verbal_skills/intro.dart';
import 'package:educational_kids_project/widgets/verbal_skills/locked.dart';
import 'package:educational_kids_project/widgets/verbal_skills/phrases.dart';
import 'package:educational_kids_project/widgets/verbal_skills/verbal_skills_app_bar.dart';
import 'package:flutter/material.dart';

class VerbalSkillsPage extends StatelessWidget {
  const VerbalSkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: const [
        SizedBox(
          height: 40,
        ),
        VerbalSkillsAppBar(),
        Center(
          child: Column(
            children: [
              SizedBox(height: 60),
              HourseBox(),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Intro()],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Phrases(), Travel()],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Locked()],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Locked(), Locked()],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
