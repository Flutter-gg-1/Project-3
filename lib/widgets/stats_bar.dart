import 'package:flutter/material.dart'; // imports material design widgets and properities

// widget represents stats bar
class StatsBar extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  const StatsBar({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 428,
      height: 71,
      padding: const EdgeInsets.symmetric(vertical: 15),
      margin: const EdgeInsets.only(top: 28),
      color: const Color(0xccE5E5E5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(data.length, (index) {
          return Row(
            children: [
              data[index]['title'] != null
              ? Text(data[index]['title'], style: TextStyle(fontSize: 30.0, color: data[index]['color']))
              : Image.asset("assets/images/${data[index]['type']}.png"),
              const SizedBox(width: 10),
              data[index]['value'] != null
              ? data[index]['value'].contains(RegExp(r'[0-9]')) == false
                ? Image.asset('assets/images/infinity.png')
                : Text(data[index]['value'],style: TextStyle(fontSize: 25, color: data[index]['color']),)
              : const SizedBox(width: 0)
            ],
          );
        }),
      )
    );
  }
}