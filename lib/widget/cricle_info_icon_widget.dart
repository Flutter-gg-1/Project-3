


import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class CricleInfoIconWidget extends StatelessWidget {
   const CricleInfoIconWidget({
    super.key, required this.img,
  });


  final String img;

  


  bool lockMethod(){

    if(img == "L"){
      return false;
    }else{
      return true;
    }

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      height: 140,
      decoration: BoxDecoration(
          color: const Color(0xff72BFC7),
          border: Border.all(color: const Color(0xffC4C4C4), width: 10),
          shape: BoxShape.circle),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 4),
                  shape: BoxShape.circle),
              child: lockMethod() ?
                  Image.asset(img) : Icon(FontAwesome.lock_solid ,color: Color(0xff000000).withOpacity(0.5),size: 50,) ,
            ),
          ),
          const Positioned.fill(
              top: 60,
              left: 100,
              child: Icon(
                FontAwesome.crown_solid,
                color: Color(0xffECC055),
              )),

              lockMethod() ? 
          const Positioned.fill(top: 80, left: 110, child: Text("1"))

          : const SizedBox()
        ],
      ),
    );
  }
}