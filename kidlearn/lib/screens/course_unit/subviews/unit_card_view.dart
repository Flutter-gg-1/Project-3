import 'package:flutter/material.dart';

import '../../../constants/color_ext.dart';
import '../../../constants/img_ext.dart';

class UnitCardView extends StatelessWidget {
  const UnitCardView({super.key, required this.unitNum});

  final int unitNum;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 96, vertical: 4),
      child: AspectRatio(
        aspectRatio: 1,
        child: Stack(
          children: [
            // MARK: Decoration Box
            Align(
              alignment: Alignment.bottomCenter,
              child: AspectRatio(
                aspectRatio: 1.6,
                child: Container(
                  decoration: BoxDecoration(
                    color: ThemeColors.headerBG,
                    border:
                        Border.all(color: ThemeColors.unitCardBorder, width: 3),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Column(
                          children: [
                            Spacer(),
                            Text(
                              'Unit ${unitNum}',
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(height: 16),
                            // Missing progress bar!
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //MARK: - Image
            Align(
              alignment: Alignment.topCenter,
              child: AspectRatio(
                aspectRatio: 1.8,
                child: Image(
                  image: Img.horse,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
