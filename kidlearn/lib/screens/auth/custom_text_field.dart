import 'package:flutter/material.dart';
import '../../constants/color_ext.dart';
import '../../constants/roboto_text_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});

  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: hint,
        hintStyle:
            RobotoTextStyle.robotoBold(size: 18, color: ThemeColors.textGrey),
        contentPadding: const EdgeInsets.all(20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
      ),
      style: RobotoTextStyle.robotoBold(size: 18),
    );
  }
}
