
import 'package:flutter/material.dart';

class CustomShowResults extends StatelessWidget {
  const CustomShowResults({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 170,
      child: Stack(
        children: [
          Positioned(
            top: 40,
            left: 15,
            child: Image.asset('assets/images/Rectangle 19.png'),
          ),
          Positioned(
            left: 60,
            child: Image.asset('assets/images/Beep Beep Horse.png'),
          ),
          const Positioned(
            top: 100,
            left: 95,
            child: Text(
              'Unit 1',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Positioned(
            left: 45,
            top: 120,
            child: Image.asset('assets/images/Completion.png'),
          )
        ],
      ),
    );
  }
}
