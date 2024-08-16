import 'package:flutter/material.dart';
import 'package:project_3/src/home_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      body: SafeArea(
          child: Column(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child:
                    Image.asset("assets/e9b6c09ff2ee246a4564f41c17ffe81c.png"),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 75,
                width: 400,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: const TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: InputBorder.none,
                      hintText: 'User name'),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 75,
                width: 400,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: const TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      border: InputBorder.none,
                      hintText: 'User name'),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30, right: 50, bottom: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 65,
                width: 380,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffEB9F4A)),
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const HomeScreen();
                      }));
                    },
                    child: const Text(
                      'Go',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              "assets/Screenshot 2022-01-25 at 1.24 1.png",
            ),
          )
        ],
      )),
    );
  }
}
