import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class AddingNameSignup extends StatelessWidget {
  const AddingNameSignup({super.key, required this.title, this.onchanged});
  final String title;
  final dynamic Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 14),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: 156,
          height: 55,
          child: CustomTextField(
            obscuretext: false,
            name: '',
            onchanged: onchanged,
          ),
        )
      ],
    );
  }
}
