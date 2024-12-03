 import 'package:flutter/material.dart';

class CustomContainerview extends StatelessWidget {
  const CustomContainerview({
    super.key,
    required this.color,
    required this.image,
    required this.titlt,
    required this.colortitle,
    required this.subtitlt, this.ontap,
  });
  final Color color;
  final String image;
  final String titlt;
  final Color colortitle;
  final String subtitlt;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap ,
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color.withOpacity(0.4),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(image),
            Text(
              titlt,
              style: TextStyle(
                fontSize: 24,
                color: colortitle,
              ),
            ),
            Text(
              subtitlt,
              style: const TextStyle(
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
