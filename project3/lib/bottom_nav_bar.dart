import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final List<BottomNavBarItem> items;

  CustomBottomNavBar({
    required this.currentIndex,
    required this.onTap,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: items.map((item) {
        return BottomNavigationBarItem(
          icon: SvgPicture.asset(
            item.iconPath,
            color: currentIndex == items.indexOf(item)
                ? item.selectedColor
                : item.unselectedColor,
            width: 24,
            height: 24,
          ),
          label: item.label,
        );
      }).toList(),
      selectedItemColor: items[currentIndex].selectedColor,
      unselectedItemColor: items[currentIndex].unselectedColor,
      showUnselectedLabels: true,
      showSelectedLabels: true,
    );
  }
}

class BottomNavBarItem {
  final String iconPath; // Path to the SVG asset
  final String label;
  final Color selectedColor;
  final Color unselectedColor;

  BottomNavBarItem({
    required this.iconPath,
    required this.label,
    required this.selectedColor,
    required this.unselectedColor,
  });
}


