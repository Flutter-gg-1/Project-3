import 'package:flutter/material.dart';

import '../../../constants/color_ext.dart';
import '../../../constants/img_ext.dart';
import '../../../model/user.dart';

class ProfileCardView extends StatelessWidget {
  const ProfileCardView({
    super.key,
    required this.user,
  });

  final User user;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),
            Text(user.username,
                style: TextStyle(fontSize: 14, color: ThemeColors.textGrey)),
            const SizedBox(height: 12),
            Row(
              children: [
                const Icon(Icons.time_to_leave, size: 15),
                const SizedBox(width: 8),
                Text(
                  'joined ${user.joinDate.month} ${user.joinDate.year}',
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        Container(
          width: 90,
          height: 90,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Image(
              image: Img.avatar,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
