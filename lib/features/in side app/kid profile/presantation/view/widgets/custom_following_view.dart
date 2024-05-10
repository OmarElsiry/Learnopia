
import 'package:flutter/material.dart';

class CustomFOLLOWINGView extends StatelessWidget {
  const CustomFOLLOWINGView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 377,
      height: 156,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Colors.black.withOpacity(0.4),
                width: 2,
              ),
            ),
          ),
          const Positioned(
            top: 10,
            left: 40,
            child: Text(
              'FOLLOWING',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 10,
            left: 210,
            child: Text(
              'FOLLOWERS',
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Positioned(
            top: 25, // Adjust this value as needed
            left: 1, // Adjust this value as needed
            right: 1, // Adjust this value as needed
            child: Divider(
              thickness: 2,
              endIndent: 1,
              indent: 1,
            ),
          ),
          const Positioned(
            top: 40,
            left: 35,
            child: Text(
              'Hana',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const Positioned(
            top: 60,
            left: 35,
            child: Text(
              '4923 XP',
            ),
          ),
          const Positioned(
            top: 80, // Adjust this value as needed
            left: 1, // Adjust this value as needed
            right: 1, // Adjust this value as needed
            child: Divider(
              thickness: 2,
              endIndent: 1,
              indent: 1,
            ),
          ),
          const Positioned(
            top: 95,
            left: 35,
            child: Text(
              'Kreem',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const Positioned(
            top: 115,
            left: 35,
            child: Text(
              '4923 XP',
            ),
          ),
        ],
      ),
    );
  }
}
