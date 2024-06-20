import 'package:flutter/material.dart';

class CustomAppBarProfile extends StatelessWidget {
  const CustomAppBarProfile({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71,
      width: 428,
      decoration: const BoxDecoration(
        color: Color(0xffE5E5E5),
      ),
      child: const Center(
        child: Text(
          'Profile',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
