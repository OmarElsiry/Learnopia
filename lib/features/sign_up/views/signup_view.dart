import 'package:educational_kids_game/features/sign_up/views/widgets/signup_view_body.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static var signUpid = 'sign up';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SignupViewBody(),
    );
  }
}
