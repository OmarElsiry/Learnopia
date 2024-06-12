import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:educational_kids_game/features/Games/Math%20game/presantation/view/math_game_view.dart';

class LevelSelectionPage extends StatelessWidget {
  static String numsRouteNameId = 'nums level selection page';

  final Map<String, List<Map<String, dynamic>>> levels = {
    "Group1": [
      {
        "name": "Beep Beep Horse.png",
        "positionX": 0.15,
        "nav to": MathGameView.mathgameid
      },
      {
        "name": "Dayflow Black Cat.png",
        "positionX": 0.25,
        "nav to": MathGameView.mathgameid
      },
      {
        "name": "Ellipse 1.png",
        "positionX": 0.2,
        "nav to": MathGameView.mathgameid
      },
      {
        "name": "Dayflow Black Cat.png",
        "positionX": 0.18,
        "nav to": 'MathGameView.mathgameid'
      },
      {
        "name": "Beep Beep Horse.png",
        "positionX": 0.5,
        "nav to": MathGameView.mathgameid
      },
    ],
    // Add more groups with levels here
  };

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    int numberOfLogos = levels["Group1"]!.length;

    return Stack(
      children: [
        SvgPicture.asset('assets/images/levels_map.svg', fit: BoxFit.cover),
        ...List.generate(numberOfLogos, (index) {
          var logoInfo = levels["Group1"]![index];
          double verticalSpacing = (screenHeight / numberOfLogos);

          return Positioned(
            right: logoInfo["positionX"] * MediaQuery.of(context).size.width,
            top: verticalSpacing * index,
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MathGameView.mathgameid);
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
