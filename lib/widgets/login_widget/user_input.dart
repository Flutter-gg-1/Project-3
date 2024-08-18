import 'package:flutter/material.dart'; // imports material design widgets and properities

// widget represents user input
class UserInput extends StatelessWidget {
  final String inputName;
  const UserInput({super.key, required this.inputName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 316,
      height: 60,
      child: TextField(
        obscureText: inputName.toLowerCase() == 'password' ? true : false,
        maxLines: 1,
        onTapOutside: (event) {FocusManager.instance.primaryFocus?.unfocus();},
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 30, top: 20, bottom: 20),
          border: OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(25)),
          filled: true,
          fillColor: Colors.white,
          hintText: inputName,
          hintStyle: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.4),fontSize: 18,fontWeight: FontWeight.bold)
        )
      ),
    );
  }
}