import 'package:flutter/material.dart';
import '../../../constants/color_ext.dart';
import '../../../model/user.dart';

class FriendsView extends StatelessWidget {
  const FriendsView({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Friends', style: TextStyle(fontSize: 24)),
            Text(
              'ADD FRIENDS',
              style: TextStyle(fontSize: 15, color: ThemeColors.blue),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: ThemeColors.borderLight),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            children: [
              // MARK: - Headers
              const Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Center(
                      child: Column(
                        children: [
                          Text(
                            'FOLLOWING',
                            style: TextStyle(
                                color: ThemeColors.blue,
                                fontWeight: FontWeight.w600),
                          ),
                          Divider(
                            height: 12,
                            color: ThemeColors.blue,
                          ),
                        ],
                      ),
                    )),
                    Expanded(
                        child: Center(
                            child: Column(
                      children: [
                        Text(
                          'FOLLOWERS',
                          style: TextStyle(
                              color: ThemeColors.textGrey,
                              fontWeight: FontWeight.w600),
                        ),
                        Divider(height: 12, color: ThemeColors.borderLight),
                      ],
                    ))),
                  ],
                ),
              ),
              ...user.following.asMap().entries.map(
                (entry) {
                  int index = entry.key;
                  User user = entry.value;
                  return _TableCellView(
                      user: user,
                      isLastCell:
                          (index == user.following.length - 1) ? true : false);
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _TableCellView extends StatelessWidget {
  const _TableCellView({
    required this.user,
    required this.isLastCell,
  });

  final User user;
  final bool isLastCell;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              left: 16.0, right: 24, bottom: isLastCell ? 8 : 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(alignment: Alignment.center, children: [
                Icon(Icons.circle, size: 34, color: user.preferredColor),
                Text(
                  user.initials(),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ]),
              const SizedBox(width: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(user.name),
                  Text('${user.stats.xp} XP'),
                ],
              ),
              const Spacer(),
              const Icon(
                Icons.chevron_right,
                size: 40,
                color: ThemeColors.borderLight,
              ),
            ],
          ),
        ),
        if (!isLastCell) const Divider()
      ],
    );
  }
}
