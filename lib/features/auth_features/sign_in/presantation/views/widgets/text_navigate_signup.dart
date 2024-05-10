
import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views/signup_view.dart';
import 'package:flutter/material.dart';

class TextNavigateToSignUp extends StatelessWidget {
  const TextNavigateToSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Don’t have account yet?',
          style: TextStyle(fontFamily: 'Roboto', fontSize: 18),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignupView.signUpid);
          },
          child: const Text(
            '    Sign Up',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 18,
              color: Color(0xff77B29F),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
