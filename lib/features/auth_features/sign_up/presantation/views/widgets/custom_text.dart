import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 200),
          child: Text(
            'Sign up',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 150),
          child: Text(
            'Create your account',
            style:
                TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 15 , fontFamily: 'Roboto'),
          ),
        )
      ],
    );
  }
}