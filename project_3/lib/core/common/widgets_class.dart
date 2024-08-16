import 'package:flutter/material.dart';
import 'package:project_3/core/all_files.dart';

Widget myRowContainer(
    {required List<Widget> addItem,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.center}) {
  return Container(
    color: ColorPallete.colorDarkGrey,
    width: double.infinity,
    height: 71,
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: mainAxisAlignment,
      children: addItem,
    ),
  );
}

// loading indicator
Widget myLoadingIndicator(
    {required double value,
    double horizontalPadding = 5,
    double height = 14,
    double width = 115}) {
  return SizedBox(
    height: height,
    width: width,
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

Widget myContainer({
  List<Widget>? listWidget,
  String? title,
  double? fontSize,
  String? imagePath,
}) {
  return Center(
    child: Container(
      width: 179,
      height: 227,
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 5, right: 5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: ColorPallete.colorDarkGrey,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Text(title ?? '',
                    style: TextStyle(fontSize: fontSize ?? 30))),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                children: listWidget ?? [],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget myContainerImage() {
  return Center(
    child: Container(
      width: 179,
      height: 227,
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 5, right: 5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: ColorPallete.colorDarkGrey,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/gf.png'),
          ],
        ),
      ),
    ),
  );
}

Widget myContainerInput({
  double? paddingHorizontal,
  BorderSide borderSide = BorderSide.none,
  double borderRadius = 25,
  String? title,
  FontWeight? fontWeight,
}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: paddingHorizontal ?? 25),
    child: TextFormField(
      decoration: InputDecoration(
        labelText: title ?? '',
        labelStyle: TextStyle(
          color: ColorPallete.colorLightBlack,
          fontWeight: fontWeight ?? FontWeight.bold,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          borderSide: borderSide,
        ),
        // border color

        filled: true,
        fillColor: ColorPallete.colorWhite,
      ),
    ),
  );
}
