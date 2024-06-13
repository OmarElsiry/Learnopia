import 'package:educational_kids_game/features/Games/puzzle_games/presantation/view/widgets/puzzle_game_view_body.dart';
import 'package:flutter/material.dart';

// In puzzle_game_view.dart
// In puzzle_game_view.dart
class PuzzleGameView extends StatelessWidget {
  final String correctAnswer;
  final String imageName;

  const PuzzleGameView({super.key, required this.correctAnswer, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PuzzleGameViewBody(correctAnswer: correctAnswer, imageName: imageName),
    );
  }
}