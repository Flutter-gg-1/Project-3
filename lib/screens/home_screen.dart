import 'package:flutter/material.dart';
import 'package:project3/screens/topics_screen.dart';
import 'package:project3/widgets/logo.dart';
import 'package:project3/widgets/user_input.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forgot Password?", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
              ],
            )),
          const SizedBox(height: 20,),
          SizedBox(
            width: 316,
            height: 58,
            child: ElevatedButton(
              style: ButtonStyle(backgroundColor: WidgetStateProperty.all(const Color(0xffEB9F4A))),
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return const TopicsScreen();
              }));
            }, child: const Text("GO", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),)),
          ),
          const SizedBox(height: 35,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don’t have account yet? ", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              Text("Sign Up", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xff77B29F)),)
            ],
          ),
          // const SizedBox(height: 15,),
          Image.asset("assets/images/dinosaur.png")
        ]),
      ),
    );
  }
}