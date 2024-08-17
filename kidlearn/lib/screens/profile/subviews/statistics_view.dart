import 'package:flutter/material.dart';
import '../../../constants/color_ext.dart';
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
                title: '${user.stats.streak}', subTitle: 'Day Streak'),
            StatisticCardView(title: '${user.stats.xp}', subTitle: 'Total XP'),
            StatisticCardView(
                title: '${user.stats.medalName()}', subTitle: 'Current League'),
            StatisticCardView(
                title: '${user.stats.top3finishes}',
                subTitle: 'Top 3 Finished'),
          ],
        )
      ],
    );
  }
}

class StatisticCardView extends StatelessWidget {
  const StatisticCardView(
      {super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: ThemeColors.borderLight, width: 2),
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(title),
        subtitle: Text(subTitle),
        subtitleTextStyle: TextStyle(fontSize: 12, color: ThemeColors.textGrey),
        titleAlignment: ListTileTitleAlignment.titleHeight,
      ),
    );
  }
}
