import 'package:flutter/material.dart';
import 'package:kidlearn/constants/roboto_text_style.dart';
import 'package:kidlearn/reusable_components/progress_view.dart';
import '../../../../constants/color_ext.dart';
import '../../../../constants/img_ext.dart';
import '../../../../model/unit.dart';

class UnitCardView extends StatelessWidget {
  const UnitCardView({super.key, required this.unit});

  final Unit unit;

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
                            const Spacer(),
                            Text(
                              'Unit ${unit.unitNum}',
                              style: RobotoTextStyle.robotoRegular(),
                            ),
                            const SizedBox(height: 16),
                            // MARK: - Progress Bar
                            ProgressView(
                              value: unit.completedChapters,
                              total: unit.totalChapters,
                            ),
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
