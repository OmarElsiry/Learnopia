import 'package:educational_kids_game/features/Games/puzzle_games/presantation/view/widgets/contaner_view_next.dart';
import 'package:educational_kids_game/features/Games/puzzle_games/presantation/view/widgets/custom_appbar.dart';
import 'package:educational_kids_game/features/Games/puzzle_games/presantation/view/widgets/custom_contaner_view.dart';
import 'package:educational_kids_game/features/Games/puzzle_games/presantation/view/widgets/view_alphabet_text_fiield.dart';
import 'package:flutter/material.dart';

class PuzzleGameViewBody extends StatelessWidget {
  const PuzzleGameViewBody({super.key});
  final int level = 1;
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
          const CustomContanerview(),
          const SizedBox(
            height: 35,
          ),
          const ViewOtp(),
          const SizedBox(
            height: 40,
          ),
          const ContanerViewNext(),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
