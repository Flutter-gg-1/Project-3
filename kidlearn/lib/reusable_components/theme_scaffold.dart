import 'package:flutter/material.dart';
import 'package:kidlearn/constants/color_ext.dart';
import '../constants/img_ext.dart';

class ThemeScaffold extends StatelessWidget {
  const ThemeScaffold(
      {super.key,
      this.headerContent,
      required this.body,
      this.hasHeader = false});

  final Widget? headerContent;
  final Widget body;
  final bool hasHeader;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.bg,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 75, bottom: (hasHeader) ? 0 : 40),
              child: SizedBox(
                height: 71,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (hasHeader)
                      Expanded(
                        child: Container(
                          height: 71,
                          color: ThemeColors.headerBG,
                          child: headerContent ?? const Placeholder(),
                        ),
                      )
                    else
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 70),
                          child: Image(
                            image: Img.logo,
                            fit: BoxFit.contain,
                          ),
                        ),
                      )
                  ],
                ),
              ),
            ),
            body,
            if (!hasHeader)
              Expanded(
                  child: Container(
                width: double.infinity,
                child: Image(
                  image: Img.dino,
                  fit: BoxFit.contain,
                ),
              ))
          ],
        ),
      ),
    );
  }
}
