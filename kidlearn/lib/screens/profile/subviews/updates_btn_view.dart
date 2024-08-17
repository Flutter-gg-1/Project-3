import 'package:flutter/material.dart';

import '../../../constants/color_ext.dart';

class UpdatesBtnView extends StatelessWidget {
  const UpdatesBtnView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: ThemeColors.headerBG, width: 2), // Set the border color
        borderRadius: BorderRadius.circular(16), // Set the corner radius
      ),
      child: ListTile(
        leading: const Icon(Icons.party_mode),
        title: const Text('Friends updates'),
        trailing: const Icon(
          Icons.chevron_right,
          size: 40,
          color: ThemeColors.borderLight,
        ),
        onTap: () => (),
      ),
    );
  }
}
