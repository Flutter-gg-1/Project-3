import 'package:flutter/material.dart';
import 'package:project_3/core/all_files.dart';

Widget rowContainer({required List<Widget> addItem}) {
  return Container(
    color: ColorPallete.colorDarkGrey,
    width: double.infinity,
    height: 71,
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: addItem,
    ),
  );
}
