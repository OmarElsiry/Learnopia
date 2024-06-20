 import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FriendsUpdates extends StatelessWidget {
  const FriendsUpdates({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 380,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.black.withOpacity(0.4),
          width: 2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/Photo 16.png'),
          const Text(
            'Friends updates',
            style: TextStyle(fontSize: 20),
          ),
          const Icon(FontAwesomeIcons.rightFromBracket),
        ],
      ),
    );
  }
}
