import 'package:education_app/screens/home_screen.dart';
import 'package:education_app/widgets/login/login_input.dart';
import 'package:education_app/widgets/login/login_title.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 245, 242),
      body: Column(children: [
        const Padding(padding: EdgeInsets.only(top: 89), child: LoginTitle()),
        const LoginInput(label: 'Username'),
        const LoginInput(label: 'Password'),
        InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.only(top: 20, left: 200, right: 21),
            child: Text('Forgot Password?',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (contex) {
                return const HomeScreen();
              }));
            },
            child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(235, 159, 74, 1),
                    borderRadius: BorderRadius.circular(25)),
                height: 58,
                width: 316,
                child: const Text(
                  'GO',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Center(
              child: InkWell(
            onTap: () {},
            child: RichText(
              text: const TextSpan(
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
                children: [
                  TextSpan(text: 'Don’t have an account yet? '),
                  TextSpan(
                    text: 'Sign Up',
                    style: TextStyle(
                      color: Color.fromRGBO(119, 178, 159, 1),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          )),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/1.png',
            ),
          ),
        ),
      ]),
    );
  }
}
