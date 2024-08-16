import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBF5F2),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 89,
          ),
          Container(
              margin: EdgeInsets.only(left: 70, right: 70),
              child: Image.asset(
                'images/MENTAL ^up^.png',
              )),
          const SizedBox(
            height: 56,
          ),
          Container(
            margin: EdgeInsets.only(left: 56, right: 56, top: 24),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  labelText: 'Username',
                  labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Color(0x40000000),
                  ),
                  contentPadding:
                      const EdgeInsets.only(left: 31, top: 19, bottom: 20)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 56, right: 56, top: 24),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                    borderSide: const BorderSide(
                      color: Colors.white,
                    ),
                  ),
                  labelText: 'Password',
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Color(0x40000000)),
                  contentPadding:
                      const EdgeInsets.only(left: 31, top: 19, bottom: 20)),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
              padding: const EdgeInsets.only(right: 56, bottom: 24),
              child: const Text(
                "Forgot Password?",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 56, right: 56),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              color: const Color(0xffEB9F4A),
              child: const ListTile(
                title: Center(
                  child: Text(
                    "GO",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 41,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 87, right: 82),
            child: FittedBox(
              child: Text.rich(
                TextSpan(
                  text: "Don’t have account yet? ",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto'),
                  children: <TextSpan>[
                    TextSpan(
                      text: "Sign Up",
                      style: TextStyle(
                        color: Color(0xff77B29F),
                      ),
                    ),
                  ],
                ),
                maxLines: 1,
                textAlign: TextAlign.left,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Expanded(
            child: Container(
                margin: EdgeInsets.only(top: 15),
                height: 368,
                width: 428,
                child:
                    Image.asset('images/Screenshot 2022-01-25 at 1.24 1.png')),
          )
        ],
      ),
    );
  }
}
