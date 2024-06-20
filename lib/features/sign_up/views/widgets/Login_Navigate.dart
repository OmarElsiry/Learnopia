import 'package:flutter/material.dart';

class LoginNavigate extends StatelessWidget {
  const LoginNavigate({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('don`t have an account?'),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Text(
            '   Log in',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
