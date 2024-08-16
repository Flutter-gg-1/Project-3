import 'package:educational_kids_game/pages/landing_screen.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xfffbf5f2),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Flexible(
                child: Image.asset(fit: BoxFit.cover, "assets/logo.png"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //user name
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19), color: Colors.white),
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
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19), color: Colors.white),
              width: MediaQuery.of(context).size.width / 1.4,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                  labelText: 'Password',
                ),
              ),
            ),
            //forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 60),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                        style: TextStyle(fontSize: 15), "Forgot password"),
                  ),
                ),
              ],
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width / 1.5,
              child: ElevatedButton(
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Color(0xFFEB9F4A))),
                onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    // return const HomeScreen();
                    return const LandingScreen();
                  }),
                ),
                child: const Text(
                    style: TextStyle(fontSize: 25, color: Color(0xFFFFFFFF)),
                    "GO"),
              ),
            ),

            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have account yet? "),
                Text(style: TextStyle(color: Color(0xff77B29F)), "Sign Up")
              ],
            ),

            Flexible(
              child: Image.asset(fit: BoxFit.cover, "assets/lets have fun.png"),
            ),
          ],
        ),
      ),
    );
  }
}
