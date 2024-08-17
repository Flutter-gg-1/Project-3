import 'package:flutter/material.dart';
import '/core/all_files.dart';

class VerbalSkills extends StatelessWidget {
  const VerbalSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: myRowContainer(
          addItem: [
            const Text('Verbal skills', style: TextStyle(fontSize: 30)),
            const SizedBox(width: 20),
            Image.asset('assets/t.png'),
          ],
        ),
      ),
    );
  }
}
