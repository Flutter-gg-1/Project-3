import 'package:flutter/material.dart'; // imports material design widgets and properities

// widget represents friend
class Friend extends StatelessWidget {
  final String name;
  final int points;
  final Color color;
  const Friend({super.key,required this.color,required this.name,required this.points});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minTileHeight: 1,
      leading: CircleAvatar(
        backgroundColor: color,
        child: Text(
          name[0].toUpperCase(),
          style: const TextStyle(
            fontSize: 15,
            color: Colors.white
          )
        )
      ),
      title: Text(
        name,
        style: const TextStyle(
          fontSize: 20
        )
      ),
      subtitle: Text(
        "$points XP",
        style: const TextStyle(
          fontSize: 15,
          color: Color.fromRGBO(0, 0, 0, 0.4)
        )
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_outlined,
        color: Color.fromRGBO(0, 0, 0, 0.2)
      ),
    );
  }
}