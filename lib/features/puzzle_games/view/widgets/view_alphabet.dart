import 'package:flutter/material.dart';

class ViewAlphabet extends StatelessWidget {
  const ViewAlphabet({super.key, required this.num, required this.color});
  final String num;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: Text(
          num,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
