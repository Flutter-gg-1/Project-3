import 'package:flutter/material.dart';
import 'package:kidlearn/constants/text_ext.dart';
import '../../constants/color_ext.dart';
import '../../reusable_components/theme_scaffold.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  void _popView(BuildContext context) => Navigator.of(context).pop();

  @override
  Widget build(BuildContext context) {
    return ThemeScaffold(
      hasHeader: true,
      headerContent: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Settings').headerText(),
        ],
      ),
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            children: [
              const Expanded(
                child: Text(
                  ' 🛠 Page under construction',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(ThemeColors.orange),
                      ),
                      onPressed: () => _popView(context),
                      child: const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text('Sign Out',
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
