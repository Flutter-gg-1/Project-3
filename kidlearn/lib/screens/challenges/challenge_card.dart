import 'package:flutter/material.dart';
import 'package:kidlearn/constants/roboto_text_style.dart';
import '../../constants/color_ext.dart';

class ChallengeCard extends StatelessWidget {
  const ChallengeCard({
    super.key,
    required this.assetImage,
    required this.title,
    required this.description,
  });

  final AssetImage assetImage;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: ThemeColors.headerBG, width: 5),
            ),
            child: AspectRatio(
              aspectRatio: 2.5,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Image(
                        image: assetImage,
                        fit: BoxFit.cover,
                        width: 130,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: RobotoTextStyle.robotoBold(size: 18),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            description,
                            style: RobotoTextStyle.robotoRegular(size: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
