import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              height: 151,
              width: 428,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Nidhi Pandya",
                        style: TextStyle(fontSize: 26, color: Colors.black),
                      ),
                      Text(
                        "Nidhi12",
                        style: TextStyle(
                            fontSize: 16, color: Colors.black.withOpacity(0.5)),
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.watch_later,
                            color: Color.fromARGB(255, 116, 114, 114),
                            size: 15,
                          ),
                          Padding(padding: EdgeInsets.only(left: 6)),
                          Text("Joined March 2022",
                              style:
                                  TextStyle(fontSize: 11, color: Colors.black))
                        ],
                      )
                    ],
                  ),
                  Image.asset('assets/profile_icons/profilePic.png'),
                ],
              ),
            );
  }
}