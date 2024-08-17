import 'package:flutter/material.dart';
import 'package:kidlearn/screens/challenges/challenges_screen.dart';
import 'package:kidlearn/screens/home/home_screen.dart';
import 'package:kidlearn/screens/profile/profile_screen.dart';
import 'package:kidlearn/screens/settings/settings_screen.dart';

import '../../constants/color_ext.dart';
import '../../mock_data/mock_data.dart';

class TabContainer extends StatefulWidget {
  @override
  _TabContainerState createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  int _selectedIndex = 0;

  // Function to handle tab selection
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Function to get the color based on the selected index
  Color _getSelectedColor() {
    switch (_selectedIndex) {
      case 0:
        return ThemeColors.iconGreen;
      case 1:
        return ThemeColors.iconRed;
      case 2:
        return ThemeColors.iconLavender;
      case 3:
        return ThemeColors.iconDarkGreen;
      default:
        return Colors.orange;
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: [
            const HomeScreen(),
            ChallengesScreen(challenge: MockData.shared.challenges.first),
            const ProfileScreen(),
            const SettingsScreen(),
          ],
        ),
        bottomNavigationBar: Container(
          color: ThemeColors.courseCardBG,
          child: TabBar(
            padding: const EdgeInsets.all(16),
            tabs: const [
              Tab(icon: Icon(Icons.home, size: 40)),
              Tab(icon: Icon(Icons.circle, size: 40)),
              Tab(icon: Icon(Icons.people, size: 40)),
              Tab(icon: Icon(Icons.settings, size: 40)),
            ],
            labelColor: _getSelectedColor(),
            unselectedLabelColor: Colors.grey,
            indicator: const BoxDecoration(color: Colors.transparent),
            dividerColor: Colors.transparent,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
