import 'package:flutter/material.dart';

class StylesData {
  static const textLarg = TextStyle(
    fontSize: 36,
    fontWeight: FontWeight.w400,
  );
  static const testmed = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w400,
  );
  static const testsmail = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );
}

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize; // Default fontSize
  final String fontFamily; // Default fontFamily
  final FontStyle fontStyle; // Default fontStyle
  final FontWeight fontWeight; // Default fontWeight
  final Color color; // Default color

  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 48, // Default fontSize
    this.fontFamily = 'Poppins', // Default fontFamily
    this.fontStyle = FontStyle.normal, // Default fontStyle
    this.fontWeight = FontWeight.w700, // Default fontWeight
    this.color = const Color(0xffEE8B60), // Default color
  });

  @override
  Widget build(BuildContext context) {
    // Construct the TextStyle with the provided and default values
    TextStyle textStyle = TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontStyle: fontStyle,
      fontWeight: fontWeight,
      color: color,
    );

    return Text(
      text,
      style: textStyle,
    );
  }
}

