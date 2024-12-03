 import 'package:educational_kids_game/core/utils/assets.dart';
import 'package:flutter/material.dart';

class Lionview extends StatelessWidget {
  const Lionview({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 100,
          backgroundColor: const Color(0xffEC8D00).withOpacity(0.2),
        ),
        Image.asset(AssetsData.lionview)
      ],
    );
  }
}
