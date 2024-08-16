import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_3/pages/skills_page.dart';
import 'package:project_3/widget/text_filed_widget.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  right: 70, left: 70, top: 50, bottom: 50),
              child: Image.asset(
                "asset/loginPage/MENTAL ^up^.png",
                height: 55,
                width: 288,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: TextFiledWidget(
                texHint: "Username",
              ),
            ),
            const TextFiledWidget(
              texHint: "Password",
            ),
            Padding(
              padding: const EdgeInsets.only(left: 180, top: 25, bottom: 24),
              child: Text(
                "Forgot Password?",
                style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
                  
                  return const SkillsPage();

                },));
              },
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 56),
                height: 58,
                width: 316,
                decoration: BoxDecoration(
                    color: const Color(0xffEB9F4A),
                    borderRadius: BorderRadius.circular(32)),
                child: Center(
                    child: Text(
                  "Go",
                  style: GoogleFonts.roboto(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 41),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have account yet?",
                    style: GoogleFonts.roboto(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " Sign Up",
                    style: GoogleFonts.roboto(
                        color: const Color(0xff87baa9),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 200,
                child: Image.asset(
              "asset/loginPage/Screenshot 2022-01-25 at 1.24 1.png",
              fit: BoxFit.fill,
              // height: 200,
              // width: 400,
            ))
          ],
        ),
      )),
    );
  }
}
