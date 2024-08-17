import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final Widget leading;
  const CustomCardWidget(
      {super.key,
      required this.title,
      required this.leading,
      required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.all(13),
      width: 190,
      height: 65,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 3),
          borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        leading: leading,
        title: Text(title,
            style: const TextStyle(
                fontSize: 20, fontFamily: "fonts/Roboto-Regular.ttf")),
        subtitle: Text(subTitle,
            style: const TextStyle(
                fontSize: 13,
                color: Colors.black45,
                fontFamily: "fonts/Roboto-Regular.ttf")),
      ),
    );
  }
}

class AchievementsCardWidget extends StatelessWidget {
  final String imgUrl;
  final String title;
  final FontWeight fontWeight;
  final String subTitle;
  const AchievementsCardWidget(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.subTitle,
      required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(4),
        alignment: Alignment.center,
        width: 378,
        height: 116,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black12, width: 3),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            SizedBox(
              child: Image.asset(imgUrl),
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              height: 100,
              width: 219,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      title,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: "fonts/Roboto-Regular.ttf",
                          fontSize: 20,
                          fontWeight: fontWeight),
                    ),
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(
                        fontFamily: "fonts/Roboto-Regular.ttf", fontSize: 15),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
