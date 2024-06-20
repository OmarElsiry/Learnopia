import 'package:flutter/material.dart';

class CustomContainerView extends StatelessWidget {
  final String imageName;

  const CustomContainerView({
    super.key,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 440,
          width: 326,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: const Color(0xffF55454).withOpacity(0.4),
          ),
        ),
        const Positioned(
          left: 60,
          top: 45,
          child: Text(
            'What animal is this?',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          top: 125,
          left: 45,
          child: Image.asset('assets/images/$imageName'), // Display the image
        ),
      ],
    );
  }
}