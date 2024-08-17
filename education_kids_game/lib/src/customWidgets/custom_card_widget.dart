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
      width: 180,
      height: 65,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 3),
          borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        leading: leading,
        title: Text(title, style: const TextStyle(fontSize: 20)),
        subtitle: Text(subTitle,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: const TextStyle(fontSize: 13, color: Colors.black45)),
      ),
    );
  }
}
