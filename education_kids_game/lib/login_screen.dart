import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfffbf5f2),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.10,
              ),
              Image.asset("assets/logo/logo.png"),
              const SizedBox(
                height: 70,
              ),
              Container(
                width: size.width * 0.80,
                margin: const EdgeInsets.all(8),
                child: TextField(
                    decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  hintText: "Username",
                  hintStyle: const TextStyle(
                    color: Colors.black45,
                  ),
                )),
              ),
              Container(
                width: size.width * 0.80,
                margin: const EdgeInsets.all(8),
                child: TextField(
                    decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  hintText: "Password",
                  hintStyle: const TextStyle(
                    color: Colors.black45,
                  ),
                )),
              ),
              const SizedBox(
                height: 15,
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forget password ?                   ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: const Color(0xffEB9F4A),
                  ),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "GO",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have account yet?",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Sign UP",
                        style: TextStyle(
                            color: Color(0xff77b29f),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              SizedBox(
                  height: size.height * 0.333,
                  width: size.width,
                  child: Image.asset(
                    "assets/image1.png",
                    fit: BoxFit.fill,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
