import 'package:flutter/material.dart';
import 'package:kidlearn/reusable_components/theme_scaffold.dart';
import '../../constants/theme_colors.dart';
import '../home/home_screen.dart';
import 'custom_text_field.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  void _navigateToHome(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
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
                const Row(
                  children: [
                    Spacer(),
                    Text(
                      'Forgot Password?',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'GO',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ]),
                const SizedBox(height: 32),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: ThemeColors.textGreen),
                    ),
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
