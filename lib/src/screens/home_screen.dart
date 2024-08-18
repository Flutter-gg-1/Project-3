import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:p_1_kids_game/src/theme/my_color.dart';
import 'package:p_1_kids_game/src/widgets/bottom_navigation_bar.dart';
import 'package:p_1_kids_game/src/widgets/category_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.primaryScreenBG,
      bottomNavigationBar: MyBottomNavigationBar(),
      body: SafeArea(
        child: Column(
          children: [
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
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ListView(
                  children: [
                    buildCategoryItem(context,
                        title: 'Logical reasoning', progress: 18, total: 40),
                    buildCategoryItem(context,
                        title: 'Artistic thinking', progress: 35, total: 40),
                    buildCategoryItem(context,
                        title: 'Verbal skills', progress: 3, total: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
