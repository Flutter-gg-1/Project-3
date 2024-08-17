import 'package:flutter/material.dart';
import 'challenges.dart';
import 'home_screen.dart';
import 'profile.dart';
import 'setting.dart';

class ButtomNavigationBarScreen extends StatefulWidget {
  const ButtomNavigationBarScreen({super.key});

  @override
  State<ButtomNavigationBarScreen> createState() => _ButtomNavigationBarScreenState();
}

class _ButtomNavigationBarScreenState extends State<ButtomNavigationBarScreen> {
  int _selectedIndex = 0;
  final List _screens = [
    const HomeScreen(),
    const Challenges(),
    const Profile(),
    const Setting()
  ];

  final _iconColors = [
    const Color(0xff41AC78),
    const Color(0xffDC3F00),
    const Color(0xffAB70DF),
    const Color(0xff6884F6)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbf5f2),
              bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        unselectedItemColor: const Color.fromARGB(0, 46, 46, 47),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                size: 30,
                color: _selectedIndex == 0 ? _iconColors[0] : const Color.fromARGB(255, 100, 99, 99),
              ),
              label: "",
              backgroundColor: const Color(0xffE5E5E5)),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.ads_click_sharp, size: 30, color: _selectedIndex == 1 ? _iconColors[1] : const Color.fromARGB(255, 100, 99, 99)),
            label: "",
            backgroundColor: const Color(0xffE5E5E5),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervisor_account,
                  size: 30, color: _selectedIndex == 2 ? _iconColors[2] : const Color.fromARGB(255, 100, 99, 99)),
              label: "",
              backgroundColor: const Color(0xffE5E5E5)),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_sharp,
                  size: 30, color: _selectedIndex == 3 ? _iconColors[3] : const Color.fromARGB(255, 100, 99, 99)),
              label: "",
              backgroundColor: const Color(0xffE5E5E5)),
        ],
      ),
      body: _screens[_selectedIndex],
    );
  }
}
