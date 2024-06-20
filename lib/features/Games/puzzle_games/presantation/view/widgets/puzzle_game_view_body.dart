import 'package:educational_kids_game/features/Games/puzzle_games/presantation/view/widgets/custom_appbar.dart';
import 'package:educational_kids_game/features/Games/puzzle_games/presantation/view/widgets/custom_contaner_view.dart';
import 'package:educational_kids_game/features/Games/puzzle_games/presantation/view/widgets/view_alphabet_text_fiield.dart';
import 'package:flutter/material.dart';

class PuzzleGameViewBody extends StatefulWidget {
  final String correctAnswer;
  final String imageName;

  const PuzzleGameViewBody(
      {super.key, required this.correctAnswer, required this.imageName});

  @override
  State<PuzzleGameViewBody> createState() => _PuzzleGameViewBodyState();
}

class _PuzzleGameViewBodyState extends State<PuzzleGameViewBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          CustomAppBarforGames(
            title: 'Level $levelcount',
            color: const Color(0xffF55454),
          ),
          const SizedBox(
            height: 25,
          ),
          CustomContainerView(imageName: widget.imageName),
          const SizedBox(
            height: 35,
          ),
          ViewOtp(
              correctAnswer: widget.correctAnswer, imageName: widget.imageName),
          const SizedBox(
            height: 40,
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
