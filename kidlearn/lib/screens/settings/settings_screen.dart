import 'package:flutter/material.dart';
import 'package:kidlearn/constants/text_ext.dart';
import '../../reusable_components/theme_scaffold.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeScaffold(
      hasHeader: true,
      headerContent: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Settings').headerText(),
        ],
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(8)),
        ],
      ),
    );
  }
}
