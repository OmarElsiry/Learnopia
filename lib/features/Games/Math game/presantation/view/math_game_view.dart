import 'package:educational_kids_game/features/Games/Math%20game/presantation/view/widgets/math_game_view_body.dart';
import 'package:flutter/material.dart';

// In math_game_view.dart
class MathGameView extends StatelessWidget {
  final int correctAnswer;
  final List<String> numbers; // Add this line
  final List<String> operators; // And this line

  const MathGameView({
    super.key,
    required this.correctAnswer,
    required this.numbers, // Add this line
    required this.operators, // And this line
  });

  static String mathgameid = 'math game';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MathGameViewBody(
        correctAnswer: correctAnswer,
        numbers: numbers,
        operators: operators,
      ),
    );
  }
}
