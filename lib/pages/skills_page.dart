



import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(

      body: SafeArea(child: 
      
      SingleChildScrollView(
        child: Column(
          children: [

            Container(

              margin: EdgeInsets.only(top: 75 ,bottom: 53),
              width: double.infinity,
              height: 71,

              color: Color(0xccE5E5E5),
            )
            


          ],
        ),
      )),
    );
  }
}