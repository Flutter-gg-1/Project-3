import 'package:flutter/material.dart';
import 'package:kidlearn/constants/text_ext.dart';
import 'package:kidlearn/screens/profile/subviews/friends_view.dart';
import 'package:kidlearn/screens/profile/subviews/profile_card_view.dart';
import 'package:kidlearn/screens/profile/subviews/statistics_view.dart';
import 'package:kidlearn/screens/profile/subviews/updates_btn_view.dart';
import '../../mock_data/mock_data.dart';
import '../../reusable_components/theme_scaffold.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final user = MockData.shared.currentUser!;

  @override
  Widget build(BuildContext context) {
    return ThemeScaffold(
      hasHeader: true,
      headerContent: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Profile').headerText(),
        ],
      ),
      body: Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                ProfileCardView(user: user),
                const SizedBox(height: 16),
                const Divider(),
                const SizedBox(height: 16),
                const UpdatesBtnView(),
                const SizedBox(height: 24),
                StatisticsView(user: user),
                const SizedBox(height: 24),
                const FriendsView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
