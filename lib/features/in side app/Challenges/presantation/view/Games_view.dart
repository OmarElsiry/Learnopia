import 'package:educational_kids_game/features/in%20side%20app/Challenges/presantation/view/widgets/games_view_body.dart';
import 'package:flutter/material.dart';

class GamesView extends StatelessWidget {
  const GamesView({super.key});
  static String gamesviewid = 'Games view id';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GamesViewBody(),
    );
  }
}
