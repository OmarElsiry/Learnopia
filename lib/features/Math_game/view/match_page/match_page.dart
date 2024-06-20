import 'package:flutter/material.dart';

import 'components/match_page_body.dart';

class MatchPageView extends StatelessWidget {
  const MatchPageView({
    super.key,
  });

  static String mathgameid = 'count pages';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MatchPageViewBody(
        choices: {
          8: 'Five',
          7: 'Seven',
          4: 'Eight',
          5: 'Four',
        },
        correctMatches: {
          5: 'Five', // 1 (Apple) matches with 'Orange'
          7: 'Seven', // 2 (Banana) matches with 'Apple'
          8: 'Eight', // 3 (Orange) matches with 'Banana'
          4: 'Four', // 4 (Grapes) matches with itself
        },
      ),
    );
  }
}
