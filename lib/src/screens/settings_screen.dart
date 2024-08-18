import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}
//settings screen with appbar only
class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      appBar: AppBar(
          backgroundColor: const Color(0xffFBF5F2),
          automaticallyImplyLeading: false,
          toolbarHeight: 30,
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(50),
              child: Container(
                  height: 50,
                  color: const Color(0xffE5E5E5),
                  child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Settings",
                          style: TextStyle(fontSize: 28),
                        )
                      ])))),
    );
  }
}
