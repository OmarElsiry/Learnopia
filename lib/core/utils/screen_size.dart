import 'package:flutter/material.dart';

class ScreenSize {
  static late double width;
  static late double height;

  static void initialize(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    width = size.width;
    height = size.height;
  }
}
