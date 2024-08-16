import 'package:flutter/material.dart';
import 'package:kidlearn/constants/theme_colors.dart';
import '../constants/img.dart';

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
                      Expanded(child: headerContent ?? const Placeholder())
                    else
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 70),
                          child: Img.logo,
                        ),
                      )
                  ],
                ),
              ),
            ),
            body,
          ],
        ),
      ),
    );
  }
}
