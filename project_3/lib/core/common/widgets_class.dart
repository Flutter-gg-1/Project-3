import 'package:flutter/material.dart';
import 'package:project_3/core/all_files.dart';

Widget rowContainer() {
  return Container(
    color: ColorPallete.colorDarkGrey,
    width: double.infinity,
    padding: const EdgeInsets.all(10),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Hello World!'),
      ],
    ),
  );
}
