import 'package:flutter/material.dart';
import 'package:project3/pages/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      body: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Image.asset("assets/MENTAL ^up^.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Container(
              height: 55,
              width: 400,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    border: InputBorder.none,
                    hintText: 'Username'),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: Container(
              height: 55,
              width: 400,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(20),
                    border: InputBorder.none,
                    hintText: 'Password'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Forgot password?",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      fontFamily: "Roboto",
                      color: Colors.black),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 400,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffEB9F4A)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondScreen()));
                },
                child: const Text(
                  "GO",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Roboto",
                      color: Colors.white),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              SizedBox(
                width: 100,
              ),
              Text(
                "Don’t have account yet?",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto"),
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Roboto"),
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset("assets/Screenshot 2022-01-25 at 1.24 1.png"),
          )
        ],
      ),
    );
  }
}
