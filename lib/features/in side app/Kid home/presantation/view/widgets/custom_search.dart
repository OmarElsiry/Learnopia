
import 'package:flutter/material.dart';
class CustomSearch extends StatelessWidget {
  const CustomSearch(
      {super.key,
      required this.name,
      required this.onchanged,
      this.obscuretext = false});
  final String? name;
  final Function(String)? onchanged;
  final bool obscuretext;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscuretext,
      // ignore: body_might_complete_normally_nullable
      validator: (data) {
        if (data!.isEmpty) {
          return "Please enter correct data";
        }
      },
      onChanged: onchanged,
      decoration: InputDecoration(
        fillColor: const Color(0xff909090),
        filled: true,
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
