import 'package:education_app/widgets/topic/subject_card.dart';
import 'package:education_app/widgets/topic/subject_circle.dart';
import 'package:education_app/widgets/topic/topic_header.dart';
import 'package:flutter/material.dart';

class TopicScreen extends StatelessWidget {
  final int score;
  const TopicScreen({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Column(children: [
              const TopicHeader(pageName: 'Verbal Skills', text: ['3', '213']),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SubjectCard(score: score),
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
              )
            ])));
  }
}
