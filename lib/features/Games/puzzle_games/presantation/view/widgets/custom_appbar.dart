import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomAppBarforGames extends StatelessWidget {
  const CustomAppBarforGames({super.key, required this.title, required this.color});
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71,
      width: 428,
      decoration: const BoxDecoration(
        color: Color(0xffE5E5E5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            title,
            style:  TextStyle(
              fontSize: 36,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
