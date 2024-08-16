import 'package:flutter/material.dart';

import '../../../constants/color_ext.dart';
import '../../../constants/img_ext.dart';
import '../../../model/chapter.dart';

class UnitChaptersView extends StatelessWidget {
  const UnitChaptersView({super.key, required this.unit});

  final unit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: unit.chapters.map<Widget>((chapter) {
          return _ChapterCard(chapter: chapter);
        }).toList(), // Convert the Iterable to a List<Widget>
      ),
    );
  }
}

class _ChapterCard extends StatelessWidget {
  const _ChapterCard({required this.chapter});

  final Chapter chapter;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Expanded(
                flex: 1,
                child: Container(
                  constraints: const BoxConstraints(
                      minWidth: 120,
                      minHeight: 120,
                      maxWidth: 140,
                      maxHeight: 140),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: ThemeColors.chapterBorder, width: 8),
                    shape: BoxShape.circle,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: ThemeColors.chapterGreen,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                            image: chapter.img,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        Text(chapter.name),
      ],
    );
  }
}
