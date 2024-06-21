import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButtonGo extends StatelessWidget {
  // ignore: non_constant_identifier_names
  CustomButtonGo(
      {super.key, required this.onTap, required this.name, this.color});
  // ignore: non_constant_identifier_names
  String? name;
  VoidCallback onTap;
  Color? color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        width: double.infinity,
        height: 60,
        child: Center(
          child: Text(
            '$name',
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto'),
          ),
        ),
      ),
    );
  }
}
