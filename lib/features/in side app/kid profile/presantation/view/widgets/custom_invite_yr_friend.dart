
import 'package:flutter/material.dart';

class InviteYourFriends extends StatelessWidget {
  const InviteYourFriends({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      height: 230,
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
          Positioned(
            top: 20,
            child: Image.asset('assets/images/Dayflow Black Cat.png'),
          ),
          Positioned(
            top: 170,
            left: 30,
            child: Container(
              height: 47,
              width: 260,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xff02A1FB),
              ),
              child: const Center(
                child: Text(
                  'INVITE FRIENDS',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            left: 140,
            top: 20,
            child: Text(
              'Invite your friends',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          const Positioned(
            left: 140,
            top: 60,
            child: Text(
              'Tell your friends it’s.\n free and fun to learn.\n on Mental up!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
