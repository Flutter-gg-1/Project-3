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
                    child: Text('Forgot Password?',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ))),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  (context).goTo(const YourScore());
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(316, 58),
                    backgroundColor: ColorPallete.colorDarkOrange),
                child: const Text(
                  'Go',
                  style: TextStyle(
                    color: ColorPallete.colorWhite,
                    fontSize: 24,
                  ),
                ),
              ),
              const SizedBox(height: 41),
              RichText(
                  text: const TextSpan(children: [
                TextSpan(
                    text: 'Don\'t have an account? ',
                    style: TextStyle(
                      color: ColorPallete.colorBlack,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    )),
                TextSpan(
                    text: 'Sign Up',
                    style: TextStyle(
                      color: ColorPallete.colorSky,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ))
              ])),
              const SizedBox(height: 20),
              Expanded(child: Image.asset('assets/dyn.png')),
            ],
          ),
        ),
      ),
    );
  }
}
