import 'package:educational_kids_game/features/sign_in/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class UserInput extends StatelessWidget {
  const UserInput(
      {super.key,
      required this.title,
      required this.texthint,
      this.onchanged,
      this.validator,
      this.obscuretext = false});
  final String title, texthint;
  final dynamic Function(String)? onchanged;
  final String? Function(String?)? validator;
  final bool obscuretext;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 70, left: 20),
          child: Row(
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 60,
          width: 358,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomTextField2(
              obscuretext: obscuretext,
              validator: validator,
              name: texthint,
              onchanged: onchanged,
            ),
          ),
        )
      ],
    );
  }
}
