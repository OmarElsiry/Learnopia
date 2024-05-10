
import 'package:flutter/material.dart';
bool isChecked = false;
class MyCustomCheckbox extends StatefulWidget {
  const MyCustomCheckbox({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyCustomCheckboxState createState() => _MyCustomCheckboxState();
}

class _MyCustomCheckboxState extends State<MyCustomCheckbox> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Checkbox(
        value: isChecked,
        onChanged: (bool? value) {
          setState(
            () {
              isChecked = value!;
            },
          );
        },
      ),
    );
  }
}
