
import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views/widgets/add_name_signup.dart';
import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views/widgets/input_user.dart';
import 'package:flutter/material.dart';

class InputEmailAndPasswordSection extends StatelessWidget {
  const InputEmailAndPasswordSection({
    super.key,
    required this.onFirstNameChanged,
    required this.onLastNameChanged,
    required this.onEmailChanged,
    required this.onPasswordChanged,
    required this.onConfirmPasswordChanged,
  });
  final ValueChanged<String> onFirstNameChanged;
  final ValueChanged<String> onLastNameChanged;
  final ValueChanged<String> onEmailChanged;
  final ValueChanged<String> onPasswordChanged;
  final ValueChanged<String> onConfirmPasswordChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AddingNameSignup(
              onchanged: onFirstNameChanged , 
              title: 'First name',
            ),
            AddingNameSignup(
              onchanged: onLastNameChanged ,
              title: 'Last name',
            )
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        InputUser(
          validator: (data) {
            if (data!.isEmpty) {
              return 'Please enter correct data';
            }
            return null;
          },
          onchanged: onEmailChanged ,
          title: 'Email',
          texthint: 'example@gmail.com',
        ),
        const SizedBox(
          height: 15,
        ),
        InputUser(
            obscuretext: true,
            validator: (data) {
              if (data!.isEmpty) {
                return 'Please enter correct data';
              }
              return null;
            },
            onchanged:onPasswordChanged ,
            title: 'Create a password',
            texthint: 'must be 8 characters'),
        const SizedBox(
          height: 15,
        ),
        InputUser(
            obscuretext: true,
            onchanged: onConfirmPasswordChanged ,
            validator: (data) {
              if (data!.isEmpty) {
                return 'Please enter correct data';
              }
              return null;
            },
            title: 'Confirm password',
            texthint: 'repeat password'),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
