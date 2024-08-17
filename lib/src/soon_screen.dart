import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class SoonScreen extends StatelessWidget {
  const SoonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F2),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFBF5F2),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Iconsax.refresh_2_bold,
              size: 60,
            ),
            Text(
              'Soon...',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}
