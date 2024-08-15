import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
              text: const TextSpan(
                children: [
                  TextSpan(text: 'M', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffEB9F4A), fontFamily: 'Ribeye', fontSize: 40)),
                  TextSpan(text: 'E', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff77B29F), fontFamily: 'Ribeye', fontSize: 40)),
                  TextSpan(text: 'N', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffAB70DF), fontFamily: 'Ribeye', fontSize: 40)),
                  TextSpan(text: 'T', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff6884F6), fontFamily: 'Ribeye', fontSize: 40)),
                  TextSpan(text: 'A', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffECC055), fontFamily: 'Ribeye', fontSize: 40)),
                  TextSpan(text: 'L', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff77B29F), fontFamily: 'Ribeye', fontSize: 40)),
                  TextSpan(text: '^', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffAB70DF), fontFamily: 'Ribeye', fontSize: 40)),
                  TextSpan(text: 'u', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff6884F6), fontFamily: 'Ribeye', fontSize: 40)),
                  TextSpan(text: 'p', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffECC055), fontFamily: 'Ribeye', fontSize: 40)),
                  TextSpan(text: '^', style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff77B29F), fontFamily: 'Ribeye', fontSize: 40)),
        
                ]
              ),
            );
  }
}