import 'package:educational_kids_game/features/auth_features/sign_up/presantation/views_model/sign%20up%20cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconSignUp extends StatelessWidget {
  const IconSignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Other sign in options'),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.facebook),
            ),
            IconButton(
              onPressed: () {
                BlocProvider.of<SignUpCubit>(context).signInWithGoogle(context);
              },
              icon: const Icon(FontAwesomeIcons.google),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.apple),
            )
          ],
        ),
      ],
    );
  }
}
