import 'package:educational_kids_game/features/auth_features/sign_in/presantation/views/widgets/signin_view_body.dart';
import 'package:flutter/material.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});
  static String signinId = 'SigninView';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SigninViewBody(),
    );
  }
}
