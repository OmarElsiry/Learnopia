import 'package:educational_kids_game/features/Games/puzzle_games/presantation/view/puzzle_game_view.dart';
import 'package:educational_kids_game/features/in%20side%20app/Challenges/presantation/view/widgets/custom_appbar_games.dart';
import 'package:educational_kids_game/features/in%20side%20app/Challenges/presantation/view/widgets/custom_container_view.dart';
import 'package:educational_kids_game/features/in%20side%20app/Challenges/presantation/view/widgets/lion_view.dart';
import 'package:educational_kids_game/features/levels/nums_level_selection_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GamesViewBody extends StatelessWidget {
  const GamesViewBody({super.key});
  static int indexpage = 1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          const CustomAppBarGames(),
          const SizedBox(
            height: 20,
          ),
          const Lionview(),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                      context, LevelSelectionPage.numsRouteNameId);
                },
                child: const CustomContainerview(
                  color: Color(0xff4EE292),
                  image: 'assets/images/Frame 36700.png',
                  titlt: 'Numbers',
                  colortitle: Color(0xff4EE292),
                  subtitlt: 'All about numbers',
                ),
              ),
              const CustomContainerview(
                color: Color(0xffF55454),
                image: 'assets/images/Book Read.png',
                titlt: 'Reading',
                colortitle: Color(0xffF55454),
                subtitlt: 'Reading some word',
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomContainerview(
                ontap: () {
                  Navigator.pushNamed(context, PuzzleGameView.puzzlegameid);
                },
                color: const Color(0xff0074FF),
                image: 'assets/images/Puzzle.png',
                titlt: 'Puzzle',
                colortitle: const Color(0xff0074FF),
                subtitlt: 'Arranging puzzle',
              ),
              const CustomContainerview(
                color: Color(0xffC78FF3),
                image: 'assets/images/Art.png',
                titlt: 'Drawing',
                colortitle: Color(0xffC78FF3),
                subtitlt: 'Coloring a picture',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
