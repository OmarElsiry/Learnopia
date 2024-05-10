import 'package:flutter/material.dart';

class CustomAppBarSetting extends StatelessWidget {
  const CustomAppBarSetting(
      {super.key, required this.color, required this.title});
  final Color color;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71,
      width: 428,
      decoration: BoxDecoration(
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
