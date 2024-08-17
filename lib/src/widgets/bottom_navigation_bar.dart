import 'package:flutter/material.dart';
import '../theme/my_color.dart';

Widget myBottomNavigationBar(BuildContext context) => BottomNavigationBar(
      items: const [
        //TODO
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.track_changes),
          label: 'Challenges',
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
            Navigator.pushNamed(context, "/home");
            break;
          case 1:
            Navigator.pushNamed(context, "/challenges");
            break;
          case 3:
            Navigator.pushNamed(context, "/profile");
            break;
          case 4:
            Navigator.pushNamed(context, "/settings");
            break;
        }
      },

      // I change the type to be fixed to enable color change
      type: BottomNavigationBarType.fixed,
      backgroundColor: MyColor.primaryBottomBarBG,

      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
    );
