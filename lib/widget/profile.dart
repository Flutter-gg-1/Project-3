
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Basel Saad',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              'Basel12',
              style: TextStyle(
                  color: Color(0xFF9c9a97),
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Icon(
                  Icons.access_time_filled,
                  color: Color(0xFF7d7b79),
                ),
                Text(
                  '  Joined March 2022',
                  style: TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w400),
                )
              ],
            )
          ],
        ),
        Image.asset(
          'lib/assest/image/boy.png',
          width: 90,
          height: 90,
        ),
      ],
    );
  }
}
