import 'package:flutter/material.dart';
import 'package:kidlearn/reusable_components/theme_scaffold.dart';
import '../../constants/color_ext.dart';
import '../../constants/roboto_text_style.dart';
import '../tab_container/tab_container.dart';
import 'custom_text_field.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  void _navigateToHome(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => TabContainer(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ThemeScaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 56.0),
            child: Column(
              children: [
                const CustomTextField(hint: 'Username'),
                const SizedBox(height: 24),
                const CustomTextField(hint: 'Password'),
                const SizedBox(height: 24),
                Row(
                  children: [
                    const Spacer(),
                    Text(
                      'Forgot Password?',
                      style: RobotoTextStyle.robotoBold(size: 18),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(ThemeColors.orange),
                      ),
                      onPressed: () => _navigateToHome(context),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'GO',
                          style: RobotoTextStyle.robotoBold(
                              size: 24, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ]),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: RobotoTextStyle.robotoBold(size: 18),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () => (),
                      child: Text('Sign Up',
                          style: RobotoTextStyle.robotoBold(
                              size: 18, color: ThemeColors.chapterGreen)),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
