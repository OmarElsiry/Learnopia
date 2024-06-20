import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.name,
       this.onchanged,
      required this.obscuretext, this.validator , this.onsaved});
  String? name;
  Function(String)? onchanged;
  final String? Function(String?)? validator;
  bool obscuretext = false;
  void Function(String?)? onsaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved:onsaved ,
      obscureText: obscuretext,
      // ignore: body_might_complete_normally_nullable
      validator: validator,
      onChanged: onchanged,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.black.withOpacity(0.4)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.black.withOpacity(0.4)),
        ),
        hintText: name,
      ),
    );
  }
}
