import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kidlearn/constants/svg.dart';
import '../../../constants/color_ext.dart';
import '../../../constants/img_ext.dart';
import '../../../model/user.dart';

class StatisticsView extends StatelessWidget {
  const StatisticsView({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [Text('Statistics', style: TextStyle(fontSize: 24))],
        ),
        const SizedBox(height: 8),
        GridView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 2.5,
          ),
          children: [
            StatisticCardView(
                title: '${user.stats.streak}',
                subTitle: 'Day Streak',
                svg: AppSvg.flame),
            StatisticCardView(
                title: '${user.stats.xp}',
                subTitle: 'Total XP',
                svg: AppSvg.thunder),
            StatisticCardView(
                title: user.stats.medalName(),
                subTitle: 'Current League',
                assetImage: Img.medal),
            StatisticCardView(
              title: '${user.stats.top3finishes}',
              subTitle: 'Top 3 Finished',
              assetImage: Img.topMedal,
            ),
          ],
        )
      ],
    );
  }
}

class StatisticCardView extends StatelessWidget {
  const StatisticCardView({
    super.key,
    required this.title,
    required this.subTitle,
    this.assetImage,
    this.svg,
  });

  final String title;
  final String subTitle;
  final AssetImage? assetImage;
  final SvgPicture? svg;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: ThemeColors.borderLight, width: 2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: assetImage != null ? Image(image: assetImage!) : svg,
        title: Text(title),
        subtitle: Text(subTitle),
        subtitleTextStyle: TextStyle(fontSize: 12, color: ThemeColors.textGrey),
        titleAlignment: ListTileTitleAlignment.titleHeight,
      ),
    );
  }
}
