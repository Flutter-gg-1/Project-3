import 'package:educational_kids_game/src/colored_text.dart';
import 'package:educational_kids_game/src/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/*
log in screen where user must enter username and password to login or error message will appare
 */
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 124),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: coloredText("MENTAL ^up^"),
              ),
              const SizedBox(
                height: 60,
              ),
              Form(
                  key: formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Column(
                      children: [
                        //Username field
                        TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                            labelText: "UserName",
                            hintText: "Username",
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: const Icon(Icons.person),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none),
                          ),
                          validator: (value) =>
                              value!.isEmpty ? "Please enter Username" : null,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        //password field
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Password",
                            hintText: "Password",
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: const Icon(Icons.password_rounded),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide.none),
                          ),
                          validator: (value) =>
                              value!.isEmpty ? "Please enter Password" : null,
                        ),
                      ],
                    ),
                  )),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 180),
                child: Text(
                  "Forgot Password?",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              //GO button
              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xffEB9F4A),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 140, vertical: 9)),
                  child: Text(
                    "GO",
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 20,
              ),
              //for "Don't have account yet?"" and "Sign Up text" with two colors
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have account yet?",
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " Sign Up",
                    style: GoogleFonts.roboto(
                        color: const Color(0xff77B29F),
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              //image from assets
              Image.asset("assets/login.png")
            ],
          ),
        ),
      ),
    );
  }
}
