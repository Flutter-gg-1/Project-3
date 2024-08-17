// import 'package:educational_kids_game/src/challenge_screen.dart';
// import 'package:educational_kids_game/src/home_screen.dart';
// import 'package:educational_kids_game/src/profile_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:fluentui_system_icons/fluentui_system_icons.dart';

// // Rename your custom widget to avoid conflict
// class CustomBottomNavigationBar extends StatefulWidget {
//   final int currentIndex;
//   final ValueChanged<int> onTap;

//   const CustomBottomNavigationBar({
//     required this.currentIndex,
//     required this.onTap,
//     super.key,
//   });

//   @override
//   State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
// }

// class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
//     int _currentIndex = 0;
//   final screens = [
//     const HomeScreen(),
//     const ChallengeScreen(),
//     const ProfileScreen(),
//   ];

//   void onTap(int newIndex) {
//     setState(() {
//       if (newIndex != 3) {
//         _currentIndex = newIndex;
//       }
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: screens[_currentIndex],
//       bottomNavigationBar:
//     BottomNavigationBar(
//       currentIndex: widget.currentIndex,
//       onTap: widget.onTap,
//       backgroundColor: const Color(0xffE5E5E5),
//       showSelectedLabels: false,
//       showUnselectedLabels: false,
//       type: BottomNavigationBarType.fixed,
//       items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: Icon(
//             FluentIcons.home_12_regular,
//             color: Color.fromRGBO(0, 0, 0, 0.5),
//             size: 40,
//           ),
//           activeIcon: Icon(
//             FluentIcons.home_12_filled,
//             color: Color(0xff41AC78),
//             size: 40,
//           ),
//           label: "",
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(
//             FluentIcons.target_arrow_16_regular,
//             color: Color.fromRGBO(0, 0, 0, 0.5),
//             size: 40,
//           ),
//           activeIcon: Icon(
//             FluentIcons.target_arrow_16_filled,
//             color: Color(0xffDC3F00),
//             size: 40,
//           ),
//           label: "",
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(
//             FluentIcons.people_12_regular,
//             color: Color.fromRGBO(0, 0, 0, 0.5),
//             size: 40,
//           ),
//           activeIcon: Icon(
//             FluentIcons.people_12_filled,
//             color: Color(0xffAB70DF),
//             size: 40,
//           ),
//           label: "",
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(
//             FluentIcons.settings_20_regular,
//             color: Color.fromRGBO(0, 0, 0, 0.5),
//             size: 40,
//           ),
//           activeIcon: Icon(
//             FluentIcons.settings_20_filled,
//             color: Color(0xff6884F6),
//             size: 40,
//           ),
//           label: "",
//         ),
//       ],
//     ));
//   }
// }
