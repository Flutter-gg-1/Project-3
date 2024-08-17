import 'package:flutter/material.dart';
import 'package:project3/challenges.dart';
import 'package:project3/home.dart';
import 'package:project3/profile.dart';

class FirstScrean extends StatefulWidget {
  const FirstScrean({super.key});

  @override
  State<FirstScrean> createState() => _FirstScreanState();
}

class _FirstScreanState extends State<FirstScrean> {
  int index = 0;

  final List<Widget> pages = [
    const Home(),
    const Challenges(),
    const Profile(),
  ];

  void destion(int selectedIndex) {
    if (selectedIndex < pages.length) {
      setState(() {
        index = selectedIndex;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      bottomNavigationBar: NavigationBar(
        selectedIndex: index,
        onDestinationSelected: destion,
        indicatorColor: const Color(0x00E5E5E5),
        backgroundColor: const Color(0x80E5E5E5),
        destinations: [
          NavigationDestination(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                index == 0 ? const Color(0xff41AC78) : const Color(0x50000000),
                BlendMode.srcIn,
              ),
              child: Image.asset('icons/Vector.png'),
            ),
            label: '',
          ),
          NavigationDestination(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                index == 1 ? const Color(0xffDC3F00) : const Color(0x50000000),
                BlendMode.srcIn,
              ),
              child: Image.asset('icons/Vector (1).png'),
            ),
            label: '',
          ),
          NavigationDestination(
            icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                index == 2 ? const Color(0xffAB70DF) : const Color(0x50000000),
                BlendMode.srcIn,
              ),
              child: Image.asset('icons/Vector (2).png'),
            ),
            label: '',
          ),
          NavigationDestination(
            icon: Image.asset(
              'icons/Vector (3).png',
              color: const Color(0x50000000),
            ),
            label: '',
          ),
        ],
      ),
      body: IndexedStack(
        index: index,
        children: pages,
      ),
    );
  }
}
