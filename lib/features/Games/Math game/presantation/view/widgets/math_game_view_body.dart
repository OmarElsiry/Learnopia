import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:math_expressions/math_expressions.dart';
import '../../../../../bluetooth/bluetooth_manager.dart';
import '../../../../../in side app/Challenges/presantation/view/games_view.dart';
import '../../../../puzzle_games/presantation/view/widgets/custom_appbar.dart';
import '../math_game_view.dart';
import 'custom_math_table.dart';

class MathGameViewBody extends StatefulWidget {
  const MathGameViewBody({super.key});

  @override
  _MathGameViewBodyState createState() => _MathGameViewBodyState();
}

class _MathGameViewBodyState extends State<MathGameViewBody> {
  List<String> pressedItems = ['', '', ''];
  int lastPressedColumn =
      0; // 0 for the first column, 1 for the second, and 2 for the third
  final int correctAnswer = 10; // Correct answer

  @override
  Widget build(BuildContext context) {
    final numbers = ['1', '2', '3', '4', '5', '6'];
    final operators = ['+', '-', '*'];

    return SingleChildScrollView(
      child: Column(
        children: [
          const CustomAppBarforGames(
            title: 'MATH',
            color: Colors.black,
          ),
          const SizedBox(height: 25),
          const Text(
            'Answer the question',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 25),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              double tableWidth = 99 * 3 + 20;
              return Container(
                width: tableWidth,
                padding: const EdgeInsets.all(3.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.5),
                ),
                child: CustomMathTable(
                  numbers: numbers,
                  operators: operators.sublist(0, 3),
                  textColor: Colors.black,
                  buttonColor: Colors.white,
                  pressedColor: const Color(0xffa881af).withOpacity(0.8),
                  foregroundColor: Colors.black,
                  backgroundColor: Colors.white,
                  onButtonPressed: updatePressedItems,
                  onReset:
                      resetPressedItems, // This is already defined, just ensure it's passed here
                ),
              );
            },
          ),
          Text(
            pressedItems.join(),
            style: const TextStyle(fontSize: 24),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.volume_up), // Sound icon
              ),
            ),
          ),
          Image.asset('assets/images/fingers_hand_num_10.png'),
          const SizedBox(
            width: 275, // Adjust the width as needed
            child: Divider(
              thickness: 1.5,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons
                    .restart_alt_rounded), // Use FontAwesome icon for Retry
                label: const Text('Reset'),
                onPressed: () {
                  Navigator.pushReplacementNamed(
                      context, MathGameView.mathgameid);
                },
              ),
              ElevatedButton.icon(
                icon: const Icon(FontAwesomeIcons
                    .arrowRight), // Use FontAwesome icon for Next
                label: const Text('Next'),
                // Inside the onPressed callback of the 'Next' button
                onPressed: () async {
                  if (isGamePassed()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Level Passed')),
                    );
                    sendMessageToRobot("Game_Passed");
                    Navigator.pushReplacementNamed(
                        context, GamesView.gamesviewid);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Try Again'),
                      ),
                    );
                    sendMessageToRobot("Game_Failed");

                    Navigator.pushReplacementNamed(
                        context, MathGameView.mathgameid);
                  }
                },
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          )
        ],
      ),
    );
  }

  void updatePressedItems(String item, bool isPressed, int columnIndex) {
    setState(() {
      if (isPressed) {
        pressedItems[columnIndex] = item;
      }
    });
  }

  void resetPressedItems() {
    setState(() {
      pressedItems = ['', '', ''];
    });
  }

  bool isGamePassed() {
    try {
      final expression = pressedItems.join();
      Parser p = Parser();
      Expression exp = p.parse(expression);
      ContextModel cm = ContextModel();
      double result = exp.evaluate(EvaluationType.REAL, cm);
      return result == correctAnswer;
    } catch (e) {
      return false;
    }
  }
}
