import 'package:educational_kids_game/features/Games/Math%20game/presantation/view/widgets/math_game_view_body.dart';
import 'package:flutter/material.dart';

// In math_game_view.dart
class MathGameView extends StatelessWidget {
  final int correctAnswer;
  final List<String> numbers; // Add this line
  final List<String> operators; // And this line

  const MathGameView({
    Key? key,
    required this.correctAnswer,
    required this.numbers, // Add this line
    required this.operators, // And this line
  }) : super(key: key);

  static String mathgameid = 'math game';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MathGameViewBody(
        correctAnswer: correctAnswer,
        numbers: ['4', '7', '2', '6', '1', '3'],
        operators: ['+', '-', '*'],
      ),
    );
  }
}
