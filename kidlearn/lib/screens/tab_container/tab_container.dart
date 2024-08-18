import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kidlearn/screens/challenges/challenges_screen.dart';
import 'package:kidlearn/screens/home/home_screen.dart';
import 'package:kidlearn/screens/profile/profile_screen.dart';
import 'package:kidlearn/screens/settings/settings_screen.dart';
import '../../constants/color_ext.dart';
import '../../mock_data/mock_data.dart';

class TabContainer extends StatefulWidget {
  const TabContainer({super.key});

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
  Color _getSelectedColor(int index) {
    return index == _selectedIndex
        ? _getColorForIndex(index)
        : ThemeColors.iconGrey;
  }

  Color _getColorForIndex(int index) {
    switch (index) {
      case 0:
        return ThemeColors.iconGreen;
      case 1:
        return ThemeColors.iconRed;
      case 2:
        return ThemeColors.iconLavender;
      case 3:
        return ThemeColors.blue;
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
            ProfileScreen(),
            const SettingsScreen(),
          ],
        ),
        bottomNavigationBar: Container(
          color: ThemeColors.courseCardBG,
          child: TabBar(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            tabs: [
              Tab(
                icon: SvgPicture.asset(
                  'assets/icons/home.svg',
                  height: 30,
                  colorFilter:
                      ColorFilter.mode(_getSelectedColor(0), BlendMode.srcIn),
                ),
              ),
              Tab(
                icon: SvgPicture.asset(
                  'assets/icons/target.svg',
                  height: 30,
                  colorFilter:
                      ColorFilter.mode(_getSelectedColor(1), BlendMode.srcIn),
                ),
              ),
              Tab(
                icon: SvgPicture.asset(
                  'assets/icons/profile.svg',
                  height: 30,
                  colorFilter:
                      ColorFilter.mode(_getSelectedColor(2), BlendMode.srcIn),
                ),
              ),
              Tab(
                icon: SvgPicture.asset(
                  'assets/icons/settings.svg',
                  height: 30,
                  colorFilter:
                      ColorFilter.mode(_getSelectedColor(3), BlendMode.srcIn),
                ),
              ),
            ],
            unselectedLabelColor: ThemeColors.iconGrey,
            indicator: const BoxDecoration(color: Colors.transparent),
            dividerColor: Colors.transparent,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
