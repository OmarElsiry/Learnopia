import 'package:flutter/material.dart';

class CustomAppBarUnitMath extends StatelessWidget {
  const CustomAppBarUnitMath({super.key});
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
            'Logical reasoning',
            style: TextStyle(fontSize: 24),
          ),
          Image.asset('assets/images/Vector.png'),
          const Text(
            '3',
            style: TextStyle(
              fontSize: 25,
              color: Color(0xffECC055),
            ),
          ),
          Image.asset('assets/images/Jewel.png'),
          const Text(
            '212',
            style: TextStyle(
              fontSize: 25,
              color: Color(0xff02A1FB),
            ),
          ),
        ],
      ),
    );
  }
}
