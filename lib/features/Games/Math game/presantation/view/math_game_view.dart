import 'package:educational_kids_game/features/Games/Math%20game/presantation/view/widgets/math_game_view_body.dart';
import 'package:flutter/material.dart';

class MathGameView extends StatelessWidget {
  const MathGameView({super.key});
  static String mathgameid = 'math game';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MathGameViewBody(),
    );
  }
}
