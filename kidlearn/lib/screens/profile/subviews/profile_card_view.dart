import 'package:flutter/material.dart';
import 'package:kidlearn/constants/roboto_text_style.dart';
import 'package:kidlearn/constants/svg.dart';
import '../../../constants/color_ext.dart';
import '../../../constants/img_ext.dart';
import '../../../model/user.dart';
import 'package:intl/intl.dart';

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
              style: RobotoTextStyle.robotoRegular(size: 25),
            ),
            Text(
              user.username,
              style: RobotoTextStyle.robotoRegular(
                  size: 16, color: ThemeColors.textGrey),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                AppSvg.clock,
                const SizedBox(width: 8),
                Text(
                  'joined ${DateFormat.MMMM().format(user.joinDate)} ${user.joinDate.year}',
                  style: RobotoTextStyle.robotoRegular(size: 12),
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
