import 'package:flutter/material.dart';
import '../../../../../../core/utils/levels_passed.dart';
import '../count_page/count_page_game.dart';
import 'count_game_levels_passed_values.dart';

class CountGamesLevelView extends StatefulWidget {
  const CountGamesLevelView({super.key});

  @override
  _CountGamesLevelViewState createState() => _CountGamesLevelViewState();
}

class _CountGamesLevelViewState extends State<CountGamesLevelView> {
  Route _createRoute(String correctAnswer, List<String> rectangleValues,
      String quizQuestion, String levelId) {
    return MaterialPageRoute(
      builder: (context) => CountPageView(
        correctAnswer: correctAnswer,
        rectangleValues: rectangleValues,
        quizQuestion: quizQuestion,
        levelId: levelId,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size mediaquerydata = MediaQuery.sizeOf(context);
    final num height = mediaquerydata.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(
            kToolbarHeight), // Set the height of the custom AppBar
        child: Container(
          height: height * 0.15,
          color: const Color(0xffFBDAB1),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Text('Select Level')), // Centered text
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 14 / 15,
          crossAxisSpacing: 24, // Spacing between columns
          mainAxisSpacing: 24, // Add this line to set spacing between rows
          children: [
            GestureDetector(
              onTap: () {
                if (Levels.levelsPassedCount >= 0) {
                  // Adjust the condition as needed
                  Navigator.push(
                    context,
                    _createRoute(
                      LevelConstructor.firstLevelConstructor().correctAnswer,
                      LevelConstructor.firstLevelConstructor().rectangleValues,
                      LevelConstructor.firstLevelConstructor().quizQuestion,
                      "countgame1",
                    ),
                  );
                }
              },
              child: ColoredContainer(
                color: Levels.levelsPassedCount >= 0
                    ? const Color(0xFFB4F8C8)
                    : Colors.grey,
                text: '1',
                txtcolor: const Color(0xff18B74B),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (Levels.levelsPassedCount >= 1) {
                  // Adjust the condition as needed
                  Navigator.push(
                    context,
                    _createRoute(
                      LevelConstructor.secondLevelConstructor().correctAnswer,
                      LevelConstructor.secondLevelConstructor().rectangleValues,
                      LevelConstructor.secondLevelConstructor().quizQuestion,
                      "countgame2",
                    ),
                  );
                }
              },
              child: ColoredContainer(
                color: Levels.levelsPassedCount >= 1
                    ? const Color(0xFFA0E7E5)
                    : Colors.grey,
                text: '2',
                txtcolor: const Color(0xff199EC2),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (Levels.levelsPassedCount >= 2) {
                  // Adjust the condition as needed
                  Navigator.push(
                    context,
                    _createRoute(
                      LevelConstructor.thirdLevelConstructor().correctAnswer,
                      LevelConstructor.thirdLevelConstructor().rectangleValues,
                      LevelConstructor.thirdLevelConstructor().quizQuestion,
                      "countgame3",
                    ),
                  );
                }
              },
              child: ColoredContainer(
                color: Levels.levelsPassedCount >= 2
                    ? const Color(0xFFFFAEBC)
                    : Colors.grey,
                text: '3',
                txtcolor: const Color(0xffC55C6C),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (Levels.levelsPassedCount >= 3) {
                  // Adjust the condition as needed
                  Navigator.push(
                    context,
                    _createRoute(
                      LevelConstructor.fourthLevelConstructor().correctAnswer,
                      LevelConstructor.fourthLevelConstructor().rectangleValues,
                      LevelConstructor.fourthLevelConstructor().quizQuestion,
                      "countgame4",
                    ),
                  );
                }
              },
              child: ColoredContainer(
                color: Levels.levelsPassedCount >= 3
                    ? const Color(0xFFFBE7C6)
                    : Colors.grey,
                text: '4',
                txtcolor: const Color(0xffCA9719),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (Levels.levelsPassedCount >= 4) {
                  // Adjust the condition as needed
                  Navigator.push(
                    context,
                    _createRoute(
                      LevelConstructor.firstLevelConstructor().correctAnswer,
                      LevelConstructor.firstLevelConstructor().rectangleValues,
                      LevelConstructor.firstLevelConstructor().quizQuestion,
                      "countgame5",
                    ),
                  );
                }
              },
              child: ColoredContainer(
                color: Levels.levelsPassedCount >= 4
                    ? const Color(0xFFB4F8C8)
                    : Colors.grey,
                text: '5',
                txtcolor: const Color(0xff18B74B),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (Levels.levelsPassedCount >= 5) {
                  // Adjust the condition as needed
                  Navigator.push(
                    context,
                    _createRoute(
                      LevelConstructor.firstLevelConstructor().correctAnswer,
                      LevelConstructor.firstLevelConstructor().rectangleValues,
                      LevelConstructor.firstLevelConstructor().quizQuestion,
                      "countgame6",
                    ),
                  );
                }
              },
              child: ColoredContainer(
                color: Levels.levelsPassedCount >= 5
                    ? const Color(0xFFA0E7E5)
                    : Colors.grey,
                text: '6',
                txtcolor: const Color(0xff199EC2),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (Levels.levelsPassedCount >= 6) {
                  // Adjust the condition as needed
                  Navigator.push(
                    context,
                    _createRoute(
                      LevelConstructor.firstLevelConstructor().correctAnswer,
                      LevelConstructor.firstLevelConstructor().rectangleValues,
                      LevelConstructor.firstLevelConstructor().quizQuestion,
                      "countgame7",
                    ),
                  );
                }
              },
              child: ColoredContainer(
                color: Levels.levelsPassedCount >= 6
                    ? const Color(0xFFFFAEBC)
                    : Colors.grey,
                text: '7',
                txtcolor: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (Levels.levelsPassedCount >= 7) {
                  // Adjust the condition as needed
                  Navigator.push(
                    context,
                    _createRoute(
                      LevelConstructor.firstLevelConstructor().correctAnswer,
                      LevelConstructor.firstLevelConstructor().rectangleValues,
                      LevelConstructor.firstLevelConstructor().quizQuestion,
                      "countgame8",
                    ),
                  );
                }
              },
              child: ColoredContainer(
                color: Levels.levelsPassedCount >= 7
                    ? const Color(0xFFFBE7C6)
                    : Colors.grey,
                text: '8',
                txtcolor: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ColoredContainer extends StatelessWidget {
  final Color color;
  final Color txtcolor;
  final String text; // Existing property for the text

  const ColoredContainer({
    Key? key,
    required this.color,
    required this.txtcolor,
    required this.text, // Constructor now requires the text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.all(4.0),
        ),
        Positioned(
          left: 60, // Approximate position
          top: 29, // Approximate position
          child: Column(
            children: [
              Text(
                text,
                style: TextStyle(
                  fontFamily: 'Poppins', // Ensure you have this font imported
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 48,
                  color: txtcolor, // Hex color value converted to Flutter
                  shadows: [
                    Shadow(
                      offset: const Offset(0, 4),
                      blurRadius: 4,
                      color: Colors.black.withOpacity(0.25),
                    )
                  ],
                ),
              ),
              const Icon(
                Icons.star,
                color: Color(0xffFFD700),
                size: 28,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
