import 'package:education_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 245, 242),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 89),
          child: RichText(
              text: const TextSpan(
                  style: TextStyle(fontFamily: 'Ribeye', fontSize: 40),
                  children: [
                TextSpan(
                    text: 'M',
                    style: TextStyle(color: Color.fromRGBO(235, 159, 74, 1))),
                TextSpan(
                    text: 'E',
                    style: TextStyle(color: Color.fromRGBO(119, 178, 159, 1))),
                TextSpan(
                    text: 'N',
                    style: TextStyle(color: Color.fromRGBO(171, 112, 223, 1))),
                TextSpan(
                    text: 'T',
                    style: TextStyle(color: Color.fromRGBO(104, 132, 246, 1))),
                TextSpan(
                    text: 'A',
                    style: TextStyle(color: Color.fromRGBO(236, 192, 85, 1))),
                TextSpan(
                    text: 'L ',
                    style: TextStyle(color: Color.fromRGBO(119, 178, 159, 1))),
                TextSpan(
                    text: '^',
                    style: TextStyle(color: Color.fromRGBO(171, 112, 223, 1))),
                TextSpan(
                    text: 'u',
                    style: TextStyle(color: Color.fromRGBO(104, 132, 246, 1))),
                TextSpan(
                    text: 'p',
                    style: TextStyle(color: Color.fromRGBO(236, 192, 85, 1))),
                TextSpan(
                    text: '^',
                    style: TextStyle(color: Color.fromRGBO(119, 178, 159, 1))),
              ])),
        ),
        Container(
          height: 60,
          width: 316,
          margin: const EdgeInsets.only(top: 50),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
          ),
          child: const TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Username',
                hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 0, 0, 0.4)),
                contentPadding: EdgeInsets.only(left: 31, top: 10)),
          ),
        ),
        Container(
          height: 60,
          width: 316,
          margin: const EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: Colors.white,
          ),
          child: const TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Password',
                hintStyle: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 0, 0, 0.4)),
                contentPadding: EdgeInsets.only(left: 31, top: 10)),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const LoginScreen();
            }));
          },
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
          )),
        ),
        Expanded(
          child: Align(
          alignment: Alignment.bottomCenter,
          child: Image.asset('assets/images/1.png',),
                ),
        ),
      ]),
    );
  }
}
