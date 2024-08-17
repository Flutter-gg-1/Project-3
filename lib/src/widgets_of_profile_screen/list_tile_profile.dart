import 'package:flutter/material.dart';

class ListTileProfileWidget extends StatelessWidget {
  final Text title;
  final Text subtitle;
  final Icon icon;
  const ListTileProfileWidget({super.key, required this.icon, required this.subtitle, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 61,
                width: 179,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                border: Border.all(color: const Color(0xffE5E5E5), width: 3)),
                child: ListTile(
                  leading: icon,
                  title: title,
                  // style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 0, 0, 0))),
                  subtitle: subtitle,
                ),
              );
  }
}