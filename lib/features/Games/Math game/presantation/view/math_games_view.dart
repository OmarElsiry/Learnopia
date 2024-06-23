import 'package:flutter/material.dart';
import 'components/math_games_view_body.dart';

class MathGameView extends StatelessWidget {
  const MathGameView({
    super.key,
  });

  static String mathgameid = 'math games';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: MathModes());
  }
}
