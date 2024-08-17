import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  final Image photo;
  final Text title;
  final Text subtitle;
  const ListTileWidget({super.key, required this.photo, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
              margin: const EdgeInsets.only(left: 24, right: 26),
              padding: const EdgeInsets.only(left: 50, right: 20),
              height: 116,
              width: 378,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                  border: Border.all(color: const Color(0xffE5E5E5), width: 3)),
              child: ListTile(
                leading: FittedBox(
                  alignment: const Alignment(1, 0), 
                  fit: BoxFit.none,
                  child: photo),
                title: title,
                subtitle: subtitle,
              ),
            );
  }
}