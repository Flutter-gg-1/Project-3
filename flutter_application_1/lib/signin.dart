import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  const Signin({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
        body: SafeArea( 
          child: Center(
          child: ListView(
            children: [
           const SizedBox(height: 10),
            Image.asset("assets/logo/logo.png", scale: 1.2,),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
              children: [
            TextField(     
                decoration: InputDecoration(
                  labelText: "Username",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(20),
                  ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
           const SizedBox(height: 10),
          const Align(
            alignment: Alignment.centerRight,
            child: Text("Forget password?", style: TextStyle(fontWeight: FontWeight.bold),),
          ),
           const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 235, 160, 74),
                 minimumSize: const Size.fromHeight(40),),
            onPressed: () {
              Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const Signin()),
            );
          }, child: const Text("GO", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 255, 255, 255), fontSize: 18))),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have account yet? ", style: TextStyle(fontWeight: FontWeight.bold),),
                Text("Sign up", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 119, 178, 159)),),
              ],
            )
            ]
            ),
          ),
          Image.asset("assets/images/login_image.png",),
          ]
          )
        ),
      )
    );
  }
}