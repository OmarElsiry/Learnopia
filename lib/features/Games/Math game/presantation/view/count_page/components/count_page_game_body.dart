import 'package:educational_kids_game/core/utils/screen_size.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../../core/utils/levels_passed.dart';
import '../../count_games_level_page/count_games_levels_view.dart';

class CountPageViewbody extends StatelessWidget {
  final String correctAnswer;
  final List<String> rectangleValues;
  final List<Color> buttonColors;
  final String quizQuestion;
  final String levelId; // Add this line

  const CountPageViewbody({
    super.key,
    required this.correctAnswer,
    required this.rectangleValues,
    required this.buttonColors,
    required this.quizQuestion,
    required this.levelId, // Add this line
  });
  void _checkAnswer(BuildContext context, String selectedAnswer) {
    if (selectedAnswer == correctAnswer) {
      CountLevels.addCountLevel(levelId);
      if (kDebugMode) {
        print("count games levels passed: ${CountLevels.passedLevelsCount}");
      }
      Navigator.of(context).pop();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const CountGamesLevelView()),
      );
    } else {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text("Try Again")));
    }
  }

  @override
  Widget build(BuildContext context) {
    final double screenheight = ScreenSize.height;
    final double screenwidth = ScreenSize.width;
    return Scaffold(
      backgroundColor: const Color(0xFFFBF5F2),
      body: Column(
        children: [
          Container(
            height: screenheight * 0.15,
            color: const Color(0xffFBDAB1),
            child: const Center(
                child: CustomText(
              text: "Math Is Fun!",
              fontSize: 41,
              color: Color(0xffEE8B60),
            )),
          ),
          SvgPicture.asset('assets/images/5bears.svg'),
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                  text: quizQuestion,
                  color: const Color(0xffEE8B60),
                  fontSize: 36)),
          for (int i = 0; i < rectangleValues.length; i += 2)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => _checkAnswer(context, rectangleValues[i]),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenwidth * 0.05),
                    child: Container(
                      width: screenwidth * 0.4, // Button width
                      height: screenheight * 0.05, // Button height
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: buttonColors[i],
                      ),
                      child: Center(child: Text(rectangleValues[i])),
                    ),
                  ),
                ),
                if (i + 1 < rectangleValues.length)
                  GestureDetector(
                    onTap: () => _checkAnswer(context, rectangleValues[i + 1]),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenwidth * 0.05,
                          vertical: screenheight * 0.009),
                      child: Container(
                        width: screenwidth * 0.4, // Button width
                        height: screenheight * 0.05, // Button height
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: buttonColors[i + 1],
                        ),
                        child: Center(child: Text(rectangleValues[i + 1])),
                      ),
                    ),
                  ),
              ],
            ),
        ],
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize; // Default fontSize
  final String fontFamily; // Default fontFamily
  final FontStyle fontStyle; // Default fontStyle
  final FontWeight fontWeight; // Default fontWeight
  final Color color; // Default color

  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 48, // Default fontSize
    this.fontFamily = 'Poppins', // Default fontFamily
    this.fontStyle = FontStyle.normal, // Default fontStyle
    this.fontWeight = FontWeight.w700, // Default fontWeight
    this.color = const Color(0xffEE8B60), // Default color
  });

  @override
  Widget build(BuildContext context) {
    // Construct the TextStyle with the provided and default values
    TextStyle textStyle = TextStyle(
      fontSize: fontSize,
      fontFamily: fontFamily,
      fontStyle: fontStyle,
      fontWeight: fontWeight,
      color: color,
    );

    return Text(
      text,
      style: textStyle,
    );
  }
}
