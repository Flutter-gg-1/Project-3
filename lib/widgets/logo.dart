import 'package:flutter/material.dart'; // imports material design widgets and properities

// widget represents app logo
class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("M", style: TextStyle(color: Color(0xffEB9F4A), fontSize: 40,fontFamily: 'Ribeye'),),
        Text("E", style: TextStyle(color: Color(0xff77B29F), fontSize: 40,fontFamily: 'Ribeye'),),
        Text("N", style: TextStyle(color: Color(0xffAB70DF), fontSize: 40,fontFamily: 'Ribeye'),),
        Text("T", style: TextStyle(color: Color(0xff6884F6), fontSize: 40,fontFamily: 'Ribeye'),),
        Text("A", style: TextStyle(color: Color(0xffECC055), fontSize: 40,fontFamily: 'Ribeye'),),
        Text("L ", style: TextStyle(color: Color(0xff77B29F), fontSize: 40,fontFamily: 'Ribeye'),),
        Text("^", style: TextStyle(color: Color(0xffAB70DF), fontSize: 40,fontFamily: 'Ribeye'),),
        Text("u", style: TextStyle(color: Color(0xff6884F6), fontSize: 40,fontFamily: 'Ribeye'),),
        Text("p", style: TextStyle(color: Color(0xffECC055), fontSize: 40,fontFamily: 'Ribeye'),),
        Text("^", style: TextStyle(color: Color(0xff77B29F), fontSize: 40,fontFamily: 'Ribeye'),),
      ],
    );
  }
}