import 'package:educational_kids_game/features/Games/puzzle_games/presantation/view/puzzle_game_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PuzzleLevelSelectionPage extends StatelessWidget {
  static String puzzleRouteNameId = 'Puzzle level selection page';

  final Map<String, List<Map<String, dynamic>>> levels = {
    "Group1": [
      {"name": "Beep Beep Horse.png", "positionX": 0.19, "nav to": 'lion'},
      {"name": "Dayflow Black Cat.png", "positionX": 0.27, "nav to": 'deer'},
      {"name": "Ellipse 1.png", "positionX": 0.16, "nav to": 'bird'},
      {"name": "Beep Beep Horse.png", "positionX": 0.5, "nav to": 'fish'},
    ],
    // Add more groups with levels here
  };

  PuzzleLevelSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    int numberOfLogos = levels["Group1"]!.length;

    return Stack(
      children: [
        SvgPicture.asset('assets/images/55.svg', fit: BoxFit.cover),
        ...List.generate(numberOfLogos, (index) {
          var logoInfo = levels["Group1"]![index];
          double verticalSpacing = (screenHeight / numberOfLogos);

          return Positioned(
            right: logoInfo["positionX"] * MediaQuery.of(context).size.width,
            top: verticalSpacing * index,
            child: GestureDetector(
              onTap: () {
                var logoInfo = levels["Group1"]![index];
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PuzzleGameView(
                      correctAnswer: logoInfo["nav to"],
                      imageName: logoInfo["name"],
                    ),
                  ),
                );
              },
              child: Transform.scale(
                // Scale down the logo
                scale: 0.5, // Adjust the scale factor as needed
                child: (logoInfo["name"].endsWith('.svg'))
                    ? SvgPicture.asset(
                        'assets/images/${logoInfo["name"]}',
                      )
                    : Image.asset(
                        'assets/images/${logoInfo["name"]}',
                      ),
              ),
            ),
          );
        }),
      ],
    );
  }
}
