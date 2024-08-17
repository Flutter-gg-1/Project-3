import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  // TODO move this code to login screen and delete this file
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFBF5F2),
        ),
        backgroundColor: const Color(0xffFBF5F2),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            //TODO
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/logo/logo.png'),
                  const SizedBox(height: 40.0),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        // Username TextField
                        TextField(
                          // style: Style,
                          decoration: InputDecoration(
                            hintText: 'Username',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),

                        const SizedBox(height: 24.0),

                        // Username TextField
                        TextField(
                          // style: Style,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                          ),
                        ),

                        // Forgot Password link
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),

                        // GO Button
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(vertical: 15.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            backgroundColor: Color(0xFFEB9F4A), // Button color
                          ),
                          child: const Text(
                            'GO',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0),

                  // Sign Up link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don’t have account yet?"),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // Image
              // TODO to make image
              Expanded(
                child: SizedBox(
                  // width: 1000,
                  width: MediaQuery.of(context).size.width,

                  child: Image.asset(
                    'assets/kids_ride_dinosaur.png',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
