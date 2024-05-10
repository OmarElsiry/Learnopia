import 'package:flutter/material.dart';

class CustomAppBarGames extends StatelessWidget {
  const CustomAppBarGames({super.key});
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
          const Text(
            'GOOOD MORNING',
            style: TextStyle(fontSize: 30),
          ),
          Image.asset(
            'assets/images/1.png',
            height: 120,
          ),
        ],
      ),
    );
  }
}