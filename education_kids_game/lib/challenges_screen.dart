import 'package:flutter/material.dart';

class ChallengesScreen extends StatefulWidget {
  const ChallengesScreen({super.key});

  @override
  State<ChallengesScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ChallengesScreen> {
  int currentIndex = 1;
  Color selectedColor = Color(0xffDC3F00);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Container(
                width: size.width,
                height: size.height * 0.10,
                color: const Color(0xffE5E5E5),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Challenges",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                )),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: size.width * 0.9,
              height: size.height * 0.17,
              // margin: EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.10),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black87)),
              child: ListTile(
                leading: Image.asset(
                  "assets/image2.png",
                  fit: BoxFit.fitHeight,
                ),
                title: Text(
                  "Complete 1000 word streak",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("Win 1000XP along with 300 diamonds."),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
                width: size.width * 0.9,
                alignment: Alignment.centerLeft,
                child: Text(" Achievements", style: TextStyle(fontSize: 30))),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: size.width * 0.9,
              height: size.height * 0.17,
              // margin: EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.10),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black87)),
              child: ListTile(
                leading: Image.asset(
                  "assets/image3.png",
                  fit: BoxFit.fitHeight,
                ),
                title: Text(
                  "Lorem Ipsum",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  "is simply dummy text of the printing and typesetting industry.",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: size.width * 0.9,
              height: size.height * 0.17,
              // margin: EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.10),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black87)),
              child: ListTile(
                leading: Image.asset(
                  "assets/image4.png",
                  fit: BoxFit.fitHeight,
                ),
                title: Text(
                  "Lorem Ipsum",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  "is simply dummy text of the printing and typesetting industry.",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: size.width * 0.9,
              height: size.height * 0.17,
              // margin: EdgeInsets.only(left: 30, right: 30),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.10),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black87)),
              child: ListTile(
                leading: Image.asset(
                  "assets/image5.png",
                  fit: BoxFit.fitHeight,
                ),
                title: Text(
                  "Lorem Ipsum",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text(
                  "is simply dummy text of the printing and typesetting industry.",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
