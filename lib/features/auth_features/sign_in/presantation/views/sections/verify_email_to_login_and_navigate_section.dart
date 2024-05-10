import 'package:educational_kids_game/core/utils/assets.dart';
import 'package:educational_kids_game/features/auth_features/sign_in/presantation/views/widgets/check_box.dart';


import 'package:educational_kids_game/features/auth_features/sign_in/presantation/views/widgets/custom_button_sigin.dart';
import 'package:educational_kids_game/features/auth_features/sign_in/presantation/views/widgets/text_navigate_signup.dart';
import 'package:flutter/material.dart';

class VerifyEmailToLoginAndNavigateSection extends StatelessWidget {
  const VerifyEmailToLoginAndNavigateSection({super.key, required this.onTap});
 final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 12),
          child: Row(
            children: [
              MyCustomCheckbox(),
              Text('I accept the terms and privacy policy'),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 15, left: 120),
          child: Text(
            'Forgot Password?',
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Roboto',
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: CustomButtonGo(
            color: const Color(0xffEB9F4A),
            Name: 'GO',
            onTap: onTap
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const TextNavigateToSignUp(),
        Image.asset(AssetsData.logoapp),
      ],
    );
  }
}
