import 'package:flutter/material.dart';
import 'package:project_3/core/all_files.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Image.asset('assets/mental.png'),
              const SizedBox(height: 40),
              // Login field
              Container(
                color: ColorPallete.colorWhite,
                padding: const EdgeInsets.symmetric(horizontal: 25),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
