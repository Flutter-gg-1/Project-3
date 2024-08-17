import 'package:educational_kids_game/src/home_screen.dart';
import 'package:educational_kids_game/widget/costom_textfeild.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F2),
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 89, bottom: 65, left: 70, right: 70),
            child: SizedBox(
                width: 288,
                height: 55,
                child: Image.asset('lib/assest/image/backgroundText.bmp')),
          ),
          const CustomTextFeild(
            hint: 'Username',
          ),
          const Padding(
            padding: EdgeInsets.only(top: 24, bottom: 25),
            child: CustomTextFeild(
              hint: 'Password',
            ),
          ),
          const SizedBox(
              width: 316,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 41),
            child: SizedBox(
              width: 316,
              height: 58,
              child: TextButton(
                onPressed: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                    (route) => false),
                style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xFFEB9F4A))),
                child: const Text(
                  'Go',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
                ),
              ),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have account yet? ',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.greenAccent, fontWeight: FontWeight.bold),
                  )
                ],
              )),
          Expanded(
            child: Image.asset(
              'lib/assest/image/background.png',
            ),
          )
        ],
      )),
    );
  }
}
