import 'package:educational_kids_game/core/utils/assets.dart';
import 'package:educational_kids_game/features/Games/puzzle_games/presantation/view/widgets/view_alphabet_text_fiield.dart';
import 'package:flutter/material.dart';

class CustomContanerview extends StatefulWidget {
  const CustomContanerview({super.key});
  
  @override
  State<CustomContanerview> createState() => _CustomContanerviewState();
}

class _CustomContanerviewState extends State<CustomContanerview> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 440,
          width: 326,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: const Color(0xffF55454).withOpacity(0.4),
          ),
        ),
        const Positioned(
          left: 60,
          top: 45,
          child: Text(
            'What animal is this?',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          top: 125,
          left: 45,
          child: Column(
            children: [
              if (levelcount == 1) ...[
                Image.asset(AssetsData.lionview),
              ] else if (levelcount == 2) ...[
                Image.asset(AssetsData.logoapp)
              ] else if (levelcount == 3) ...[
                Image.asset(AssetsData.starappbar)
              ]
            ],
          ),
        ),
      ],
    );
  }
}
