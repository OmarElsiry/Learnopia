import 'package:educational_kids_game/features/in%20side%20app/unit%20math/presantation/view/widgets/custom_appbar.dart';
import 'package:educational_kids_game/features/in%20side%20app/unit%20math/presantation/view/widgets/custom_features_games.dart';
import 'package:educational_kids_game/features/in%20side%20app/unit%20math/presantation/view/widgets/custom_show_results.dart';
import 'package:flutter/material.dart';

class UnitMathViewBody extends StatelessWidget {
  const UnitMathViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          CustomAppBarUnitMath(),
          SizedBox(
            height: 50,
          ),
          CustomShowResults(),
          SizedBox(
            height: 20,
          ),
          Text(
            'MATH',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(
            height: 15,
          ),
          CustomFeaturesGames(),
        ],
      ),
    );
  }
}
