import 'package:education_app/widgets/topic/subject_card.dart';
import 'package:education_app/widgets/topic/subject_circle.dart';
import 'package:education_app/widgets/topic/topic_header.dart';
import 'package:flutter/material.dart';

class TopicScreen extends StatelessWidget {
  final String topicName;
  final int crowns;
  final int diamonds;

  const TopicScreen({super.key,required this.topicName, required this.crowns, required this.diamonds});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(251, 245, 242, 1),
        body: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(children: [
               TopicHeader(
                  pageName: topicName, points: [crowns, diamonds]),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: Column(
                      children: [
                        SubjectCard(crowns: crowns),
                        const SubjectCircle(
                            imagePath: 'assets/images/pencil.png',
                            label: 'Intro'),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SubjectCircle(
                                imagePath: 'assets/images/book.png',
                                label: 'Phrases'),
                            SizedBox(
                              width: 17,
                            ),
                            SubjectCircle(
                                imagePath: 'assets/images/bike.png',
                                label: 'Travel'),
                          ],
                        ),
                        const SubjectCircle(
                          isLocked: true,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SubjectCircle(
                              isLocked: true,
                            ),
                            SizedBox(
                              width: 17,
                            ),
                            SubjectCircle(
                              isLocked: true,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ])));
  }
}
