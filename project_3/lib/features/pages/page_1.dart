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
              myContainerInput(title: 'Username'),
              const SizedBox(height: 24),
              myContainerInput(title: 'Password'),
              const SizedBox(height: 25),
              const Padding(
                padding: EdgeInsets.only(right: 50),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: Text('Forgot Password?')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
