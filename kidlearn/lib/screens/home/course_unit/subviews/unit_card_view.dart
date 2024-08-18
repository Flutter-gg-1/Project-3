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
      padding: const EdgeInsets.symmetric(horizontal: 94, vertical: 4),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          AspectRatio(
            aspectRatio: 1.6,
            child: Container(
              decoration: BoxDecoration(
                color: ThemeColors.headerBG,
                border: Border.all(color: ThemeColors.unitCardBorder, width: 3),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Unit ${unit.unitNum}',
                      style: RobotoTextStyle.robotoRegular(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: ProgressView(
                            value: unit.completedChapters,
                            total: unit.totalChapters,
                          ),
                        ),
                        Text(
                          '${unit.completedChapters}/${unit.totalChapters}',
                          style: RobotoTextStyle.robotoRegular(
                              size: 14, color: ThemeColors.textGrey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 1.6,
                      child: Image(
                        image: Img.horse,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
