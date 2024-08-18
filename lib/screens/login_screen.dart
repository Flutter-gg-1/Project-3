import 'package:flutter/material.dart';                 // imports material design widgets and properities
import 'package:project3/widgets/logo.dart';            // widget represents app logo
import 'package:project3/widgets/user_input.dart';      // widget represents user input
import 'package:project3/screens/home_screen.dart';     // Home page

// login page
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffFBF5F2),
      body: SafeArea(
        child: Column(
          children: [
          const SizedBox(height: 40,),
          const Logo(),
          const SizedBox(height: 60,),
          const UserInput(inputName: "Username"),
          const SizedBox(height: 24,),
          const UserInput(inputName: "Password"),
          const SizedBox(height: 20,),
          const SizedBox(
            width: 316,
            child: Text("Forgot Password?",textAlign: TextAlign.right,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
          ),
          const SizedBox(height: 20,),
          SizedBox(
            width: 316,
            height: 58,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(const Color(0xffEB9F4A))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {return const HomeScreen();}));
                },
                child: const Text("GO",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold))
              ),
            ),
          const SizedBox(height: 35,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don’t have account yet? ",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text("Sign Up",style: TextStyle(color: Color(0xff77B29F),fontSize: 18,fontWeight: FontWeight.bold)),
            ],
          ),
          Image.asset("assets/images/dinosaur.png")
        ]),
      ),
    );
  }
}