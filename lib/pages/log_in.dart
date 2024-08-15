import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
              width: 300,
              child: Placeholder(
                child: Text("LOGO"),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            //user name
            const SizedBox(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'User Name',
                ),
              ),
            ),

            const SizedBox(
              height: 20,
            ),
            //password
            const SizedBox(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
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
                  child: const Text("Forgot password"),
                ),
              ],
            ),

            ElevatedButton(
              onPressed: () {},
              child: const Text("Log in"),
            ),

            const SizedBox(
              height: 40,
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have account yet? "),
                Text(style: TextStyle(color: Color(0xff77B29F)), "Sign Up")
              ],
            )
          ],
        ),
      ),
    );
  }
}
