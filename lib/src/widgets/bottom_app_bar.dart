import 'package:flutter/material.dart';

import '../interface/icon.dart';
import '../theme/my_color.dart';

// TODO add a parameter for the icon and title
Widget bottomBar(String title, List<MyIcon> myIcon) =>
    // TODO move it to widgets
    Padding(
      padding: const EdgeInsets.only(top: 18, bottom: 40),
      child: Container(
        color: MyColor.primaryBottomBarBG,
        height: 50,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Icon(Icons.local_fire_department, color: Colors.orange),
                SizedBox(width: 4),
                Text('3', style: TextStyle(fontSize: 18)),
              ],
            ),
            Row(
              children: [
                Icon(Icons.card_travel, color: Colors.blue),
                SizedBox(width: 4),
                Text('1432 XP', style: TextStyle(fontSize: 18)),
              ],
            ),
            Row(
              children: [
                Icon(Icons.favorite, color: Colors.red),
                SizedBox(width: 4),
                Text('∞', style: TextStyle(fontSize: 18)),
              ],
            ),
          ],
        ),
      ),
    );
