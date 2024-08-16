import 'package:flutter/material.dart';
import 'package:project_3/core/all_files.dart';

Widget myRowContainer({required List<Widget> addItem}) {
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

// loading indicator
Widget myLoadingIndicator(
    {required double value, double horizontalPadding = 5, double height = 14, double width = 100}) {
  return SizedBox(
    height: 14,
    width: 100,
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: Transform(
        transform: Matrix4.skewX(-0.5),
        child: LinearProgressIndicator(
          value: value,
          color: const Color.fromRGBO(236, 192, 85, 1),
          minHeight: 14,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
        ),
      ),
    ),
  );
}
