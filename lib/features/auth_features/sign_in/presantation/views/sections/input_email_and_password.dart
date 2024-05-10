import 'package:educational_kids_game/features/auth_features/sign_in/presantation/views/widgets/custom_user_input.dart';
import 'package:flutter/material.dart';

class InputEmailandpassword extends StatelessWidget {
  const InputEmailandpassword({super.key, required this.onchangedforemail,required this.onchangedforpassword, });
  final dynamic Function(String) onchangedforemail;
  final dynamic Function(String) onchangedforpassword;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UserInput(
          validator: (data) {
            if (data!.isEmpty) {
              return "Please enter correct data";
            }
            return null;
          },
          onchanged: onchangedforemail ,
          title: 'Username',
          texthint: 'Your Username',
        ),
        const SizedBox(
          height: 20,
        ),
        UserInput(
          obscuretext: true,
          validator: (data) {
            if (data!.isEmpty) {
              return "Please enter correct data";
            }
            return null;
          },
          onchanged: onchangedforpassword ,
          title: 'Password',
          texthint: 'Your Password',
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
