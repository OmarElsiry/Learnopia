import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views/widgets/Icon_switch.dart';
import 'package:flutter/material.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        IconSwitch(),
        Text(
          'Daily reports',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ],
    );
  }
}