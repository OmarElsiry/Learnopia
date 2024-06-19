import 'package:flutter/material.dart';
import 'components/count_page_game_body.dart';

class CountPageView extends StatelessWidget {
  final String correctAnswer;
  final List<String> rectangleValues;
  final String quizQuestion;
  final List<Color> buttonColors;
final String levelId;
 const CountPageView({
     Key? key,
     required this.correctAnswer,
     required this.rectangleValues,
     required this.quizQuestion,
     this.buttonColors = const [
       Color(0xFFFBE7C6), // Light Peach
       Color(0xFFFFAEBC), // Light Coral Pink
       Color(0xFFA0E7E5), // Light Teal
       Color(0xFFB4F8C8), // Light Mint Green
     ],
     required this.levelId,
 });

  @override
  Widget build(BuildContext context) {
    // Randomly shuffle the buttonColors array
    List<Color> mutableButtonColors = List.from(buttonColors)..shuffle();

    return Scaffold(
      body: CountPageViewbody(
        correctAnswer: correctAnswer,
        rectangleValues: rectangleValues,
        buttonColors: mutableButtonColors,
        quizQuestion: quizQuestion, levelId: levelId,
      ),
    );
  }
}
