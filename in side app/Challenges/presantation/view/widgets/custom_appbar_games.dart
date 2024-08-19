import 'package:educational_kids_game/core/utils/screen_size.dart';
import 'package:flutter/material.dart';

class CustomAppBarGames extends StatelessWidget {
  const CustomAppBarGames({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenSize.height * 0.18,
      width: 428,
      decoration: const BoxDecoration(
        color: Color(0xffE5E5E5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'GOOOD MORNING',
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
