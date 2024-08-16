import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  final String? hint;
  const CustomTextFeild({
    super.key,
    required String this.hint,
  });
  
   
  @override
  Widget build(BuildContext context) {
    
    return  SizedBox(
     height: 60,
     width: 316,
     child:  TextField(
       keyboardType: TextInputType.name,
       decoration: InputDecoration(
         filled: true,
         fillColor: Colors.white,
         hintStyle: const TextStyle(color: Colors.black45),//#00000066
         hintText: '  $hint',
         border: const OutlineInputBorder(
           borderRadius: BorderRadius.all(Radius.circular(25)),
           borderSide: BorderSide.none
         )
       ),
       
     ),
              );
  }
}