import 'package:flutter/material.dart';
import 'package:project3/src/home_screen.dart';
import 'package:project3/src/widgets_of_login_screen/rich_text.dart';
import 'package:project3/src/widgets_of_login_screen/text_field.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbf5f2),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(89), child: RichTextWidget())),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 65)),
            const Center(
              child: SizedBox(
                  height: 60,
                  width: 316,
                  child: TextFieldWidget(hintMessege: 'Username')),
            ),
            const Padding(padding: EdgeInsets.only(top: 24)),
            const SizedBox(
                height: 60,
                width: 316,
                child: TextFieldWidget(hintMessege: 'Password')),
            const Padding(padding: EdgeInsets.only(top: 25)),
            Container(
              margin: const EdgeInsets.only(left: 170),
              child: const Text(
                "Forgot Password?",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 24)),
            SizedBox(
              height: 58,
              width: 316,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return const HomeScreen();
                  }));
                },
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(const Color(0xffEB9F4A))),
                child: const Text(
                  "Go",
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 41)),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                  text: 'Don’t have account yet?',
                  style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
                  TextSpan(
                  text: ' Sign Up',
                  style: TextStyle(color: Color(0xff77B29F), fontSize: 14, fontWeight: FontWeight.bold)),
            ])),
            Expanded(
                child: Image.asset('assets/logo.png')),
          ],
        ),
      ),
    );
  }
}
