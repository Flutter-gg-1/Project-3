import 'dart:ffi';

import 'package:educational_kids_game/pages/home_screen.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbf5f2),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
              width: double.infinity,
              child: Placeholder(
                child: Center(child: Text("LOGO")),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //user name
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              width: MediaQuery.of(context).size.width / 1.4,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                  labelText: 'User Name',
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            //password
            Container(
              decoration: const BoxDecoration(color: Colors.white),
              width: MediaQuery.of(context).size.width / 1.4,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                  labelText: 'Passwird',
                ),
              ),
            ),
            //forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text(
                      style: TextStyle(fontSize: 10), "Forgot password"),
                ),
              ],
            ),

            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              ),
              child: const Text("Log in"),
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have account yet? "),
                Text(style: TextStyle(color: Color(0xff77B29F)), "Sign Up")
              ],
            ),
            Flexible(
              child: Image.asset(
                  height: double.infinity,
                  width: double.infinity,
                  "assets/lets have fun.png"),
            ),
          ],
        ),
      ),
    );
  }
}
