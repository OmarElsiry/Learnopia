import 'package:educational_kids_game/features/auth_features/sign_in/presantation/views/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomAppbar2(),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hi, Welcome Back !',
              style: TextStyle(fontSize: 35),
            ),
          ],
        ),
      ],
    );
  }
}
