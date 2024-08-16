import 'package:flutter/material.dart';

import '../../../constants/color_ext.dart';
import '../../../constants/img_ext.dart';
import '../../../model/chapter.dart';
import '../../../model/unit.dart';

class UnitChaptersView extends StatelessWidget {
  const UnitChaptersView({super.key, required this.unit});

  final Unit unit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: unit.chapters.asMap().entries.map((entry) {
          int index = entry.key;
          Chapter chapter = entry.value;
          return Column(
            children: [
              if (index == 0 || index % 3 == 0)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 1,
                        child: _ChapterCard(chapter: unit.chapters[index]))
                  ],
                )
              else if ((index == 1 || index % 3 == 1) &&
                  index != unit.chapters.length - 1)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _ChapterCard(chapter: unit.chapters[index]),
                    const SizedBox(width: 16),
                    _ChapterCard(chapter: unit.chapters[index + 1]),
                  ],
                )
            ],
          );
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
        Container(
          constraints: const BoxConstraints(
              minWidth: 120, minHeight: 120, maxWidth: 140, maxHeight: 140),
          decoration: BoxDecoration(
            border: Border.all(color: ThemeColors.chapterBorder, width: 8),
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
                  padding: const EdgeInsets.all(16.0),
                  child: Image(
                    image: chapter.img,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ),
        Text(chapter.name),
      ],
    );
  }
}
