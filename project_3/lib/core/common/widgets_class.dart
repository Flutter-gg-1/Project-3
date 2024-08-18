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
      child: LinearProgressIndicator(
        value: value,
        color: const Color.fromRGBO(236, 192, 85, 1),
        minHeight: 14,
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10), bottomRight: Radius.circular(10)),
      ),
    ),
  );
}

Widget myContainer({
  List<Widget>? listWidget,
  String? title,
  double? fontSize,
  String? imagePath,
  double? width = 179,
  double? height = 227,
  Color? color = ColorPallete.colorDarkGrey,
  EdgeInsets padding = const EdgeInsets.all(5),
  margin = const EdgeInsets.only(left: 0, right: 0),
  AlignmentGeometry? alignment = Alignment.center,
}) {
  return Center(
    child: Container(
      width: width,
      height: height,
      padding: padding,
      alignment: alignment,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        border: Border.all(color: ColorPallete.colorDarkGrey, width: 2),
        color: color,
      ),
      child: Center(
        child: Column(
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

Widget myAvatar({required String imagePath, required String imagePath2}) {
  return Stack(alignment: Alignment.center, children: [
    const CircleAvatar(
      radius: 140 / 2,
      backgroundColor: ColorPallete.colorDarkGrey,
    ),
    const CircleAvatar(
      radius: 125 / 2,
      backgroundColor: ColorPallete.colorWhite,
    ),
    CircleAvatar(
      radius: 110 / 2,
      backgroundColor: ColorPallete.colorDarkGreen,
      child: Image.asset(imagePath),
    ),
    Positioned(
      right: -1,
      bottom: 25,
      child: Image.asset(imagePath2),
    ),
  ]);
}

Widget myContainerView({required String text, required String imagePath}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      border: Border.all(color: ColorPallete.colorDarkGrey, width: 2),
      color: ColorPallete.colorWhite,
    ),
    width: 377,
    height: 150,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Image(image: AssetImage(imagePath), width: 116, height: 105),
        ),
        Flexible(
          child: Text(text, style: const TextStyle(fontSize: 20)),
        ),
      ],
    ),
  );
}
