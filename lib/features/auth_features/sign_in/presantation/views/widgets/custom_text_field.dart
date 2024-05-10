import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField2 extends StatelessWidget {
  CustomTextField2(
      {super.key,
      required this.name,
      required this.onchanged,
      this.validator,
      this.obscuretext = false});
  String? name;
  Function(String)? onchanged;
  bool obscuretext;
  String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscuretext,
      validator: validator,
      onChanged: onchanged,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26),
          borderSide: const BorderSide(color: Colors.white),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26),
          borderSide: const BorderSide(color: Colors.white),
        ),
        hintText: name,
      ),
    );
  }
}
