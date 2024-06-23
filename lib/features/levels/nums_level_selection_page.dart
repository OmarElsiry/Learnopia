import 'package:educational_kids_game/core/utils/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:educational_kids_game/features/Games/Math%20game/presantation/view/math_game_view.dart';

class NumsLevelSelectionPage extends StatelessWidget {
  static String numsRouteNameId = 'nums level selection page';

  final Map<String, List<Map<String, dynamic>>> levels = {
    "Group1": [
      {
        "name": "Beep Beep Horse.png",
        "positionX": 0.15,
        "nav to": 10,
        "numbers": ['4', '7', '2', '6', '1', '3'],
        "operators": ['', '+', '']
      },
      {
        "name": "Dayflow Black Cat.png",
        "positionX": 0.25,
        "nav to": 12,
        "numbers": ['5', '9', '2', '8', '3', '6'],
        "operators": ['', '-', '']
      },
      {
        "name": "Ellipse 1.png",
        "positionX": 0.2,
        "nav to": 7,
        "numbers": ['1', '4', '7', '2', '5', '8'],
        "operators": ['', '+', '']
      },
      {
        "name": "Dayflow Black Cat.png",
        "positionX": 0.18,
        "nav to": 15,
        "numbers": ['2', '4', '6', '8', '1', '3'],
        "operators": ['', '*', '']
      },
      {
        "name": "Beep Beep Horse.png",
        "positionX": 0.5,
        "nav to": 18,
        "numbers": ['3', '6', '9', '2', '5', '8'],
        "operators": ['', '/', '']
      },
    ],
  };

  NumsLevelSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = ScreenSize.height;
    final double screenWidth = ScreenSize.width;
    int numberOfLogos = levels["Group1"]!.length;

    return Stack(
      children: [
        SvgPicture.asset('assets/images/puzzleLevels.svg', fit: BoxFit.cover),
        ...List.generate(numberOfLogos, (index) {
          var logoInfo = levels["Group1"]![index];
          double verticalSpacing = (screenHeight / numberOfLogos);

          return Positioned(
            right: logoInfo["positionX"] * screenWidth,
            top: verticalSpacing * index,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MathGameView(
                      correctAnswer: logoInfo["nav to"],
                      numbers: logoInfo["numbers"],
                      operators: logoInfo["operators"],
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
