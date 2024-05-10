import 'package:educational_kids_game/features/Games/puzzle_games/presantation/view/widgets/puzzle_game_view_body.dart';
import 'package:flutter/material.dart';

class PuzzleGameView extends StatelessWidget {
  const PuzzleGameView({super.key});
  static String puzzlegameid = 'Puzzle Game';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PuzzleGameViewBody(),
    );
  }
}
