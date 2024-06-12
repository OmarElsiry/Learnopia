import 'package:educational_kids_game/features/Games/Math%20game/presantation/view/widgets/math_game_view_body.dart';
import 'package:flutter/material.dart';

// In math_game_view.dart

class MathGameView extends StatelessWidget {
  final int correctAnswer;

  const MathGameView({Key? key, required this.correctAnswer}) : super(key: key);

  static String mathgameid = 'math game';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MathGameViewBody(
          correctAnswer: correctAnswer), // Pass correctAnswer here
    );
  }
}
