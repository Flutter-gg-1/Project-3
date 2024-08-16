import 'package:flutter/material.dart';

class UnitTwo extends StatelessWidget {
  const UnitTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      height: MediaQuery.of(context).size.height / 4,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        color: Color.fromARGB(84, 196, 196, 196),
      ),
      child: const Center(
        child: Icon(Icons.lock),
      ),
    );
  }
}
