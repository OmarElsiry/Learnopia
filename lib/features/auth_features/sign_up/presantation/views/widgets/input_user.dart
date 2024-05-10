import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class InputUser extends StatelessWidget {
  const InputUser({
    super.key,
    required this.title,
    required this.texthint,
    this.onchanged,
    this.validator,
    this.obscuretext = false,
  });
  final dynamic Function(String)? onchanged;
  final String title, texthint;
  final String? Function(String?)? validator;
  final bool obscuretext;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        CustomTextField(
          obscuretext: obscuretext,
          validator: validator,
          name: texthint,
          onchanged: onchanged,
        )
      ],
    );
  }
}
