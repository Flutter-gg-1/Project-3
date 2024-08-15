import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 230, 223),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.10,
              ),
              Image.asset("assets/logo/logo.png"),
              const SizedBox(
                height: 100,
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
              
              )
              // SizedBox(
              //     width: size.width,
              //     height: size.height * 0.6,
              //     child: Image.asset("assets/image1.png"))
            ],
          ),
        ),
      ),
    );
  }
}
