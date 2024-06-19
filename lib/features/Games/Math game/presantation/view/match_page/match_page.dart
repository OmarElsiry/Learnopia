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
      body: MatchPageViewBody(),
    );
  }
}
