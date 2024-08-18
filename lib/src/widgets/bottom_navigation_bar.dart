import 'package:flutter/material.dart';
import '../theme/my_color.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({super.key});

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int selectedIndex = 0;

  // Function to handle tab selection
  void _onItemPressd(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void routes(index) {}

  // Function to get the color based on the selected index
  Color _getSelectedColor(int index) {
    return index == selectedIndex ? _getColorForIndex(index) : MyColor.black50;
  }

  Color _getColorForIndex(int index) {
    switch (index) {
      case 0:
        return MyColor.greenLight;
      case 1:
        return MyColor.red;
      case 2:
        return MyColor.purple;
      case 3:
        return MyColor.greyLight;
      default:
        return MyColor.black50;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.track_changes),
          label: 'Challenges',
          activeIcon: Icon(Icons.track_changes, color: MyColor.red),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person), // TODO change icon to make it 2 persons
          label: 'Profile',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
      ],
      // Route
      onTap: (index) {
        switch (index) {
          case 0:
            _onItemPressd(index);
            // Navigate to home page
            Navigator.pushNamed(context, "/home");
            break;
          case 1:
            _onItemPressd(index);
            Navigator.pushNamed(context, "/challenges");

            break;
          case 2:
            _onItemPressd(index);
            Navigator.pushNamed(context, "/profile");
            break;
          case 3:
            break;
        }
      },

      // I change the type to be fixed to enable color change
      type: BottomNavigationBarType.fixed,
      backgroundColor: MyColor.primaryBottomBarBG,
      selectedItemColor: _getColorForIndex(selectedIndex),
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
  }
}
