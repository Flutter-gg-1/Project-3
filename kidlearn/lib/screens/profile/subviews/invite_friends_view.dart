import 'package:flutter/material.dart';
import 'package:kidlearn/constants/roboto_text_style.dart';

import '../../../constants/color_ext.dart';
import '../../../constants/img_ext.dart';

class InviteFriendsView extends StatelessWidget {
  const InviteFriendsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: ThemeColors.borderLight),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.5,
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image(
                              image: Img.cat,
                              fit: BoxFit.contain,
                            ),
                          ),
                          const Spacer(),
                          Expanded(
                              flex: 4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Invite your friends',
                                    style: RobotoTextStyle.robotoMedium(),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'Tell your friends it’s free and fun to learn on Mental up!',
                                    style:
                                        RobotoTextStyle.robotoRegular(size: 16),
                                  ),
                                ],
                              )),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () => (),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ThemeColors.blue,
                                foregroundColor: Colors.white, // Text color
                                shadowColor: ThemeColors.blue.withOpacity(0.5),
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                              child: Text(
                                'INVITE FRIENDS',
                                style: RobotoTextStyle.robotoMedium(
                                    size: 16, color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
