import 'package:flutter/material.dart';

import 'widgets/games_view_body.dart';

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
