import 'package:flutter/material.dart';

class CustomAppbarAddKid extends StatelessWidget {
  const CustomAppbarAddKid({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        color: Color(0xff67B59C),
      ),
      height: 101,
      width: 443,
      child: const Padding(
        padding: EdgeInsets.only(top: 45, left: 135),
        child: Text(
          'Add kid',
          style: TextStyle(
              color: Colors.white, fontSize: 32, fontFamily: 'Righteous'),
        ),
      ),
    );
  }
}
