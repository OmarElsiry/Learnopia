
import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views/widgets/login_navigate.dart';
import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views/widgets/verify_email.dart';
import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views/widgets/custom_button.dart';
import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views/widgets/icon_signup.dart';
import 'package:flutter/material.dart';

class VerifyEmailSection extends StatelessWidget {
  const VerifyEmailSection({super.key, required this.ontap});
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerifyEmail(),
        Text(
          'Get a daily avtivity report via email',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black.withOpacity(0.7),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        CustomButton(
          Name: 'Log in',
          onTap: ontap ,
        ),
        const SizedBox(
          height: 10,
        ),
        const LoginNavigate(),
        const SizedBox(
          height: 30,
        ),
        const IconSignUp()
      ],
    );
  }
}
