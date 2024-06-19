import 'package:flutter/material.dart';
import '../count_page/count_page_game.dart';
import 'count_game_levels_passed_values.dart';

class CountGamesLevelView extends StatefulWidget {
  const CountGamesLevelView({super.key});

  @override
  _CountGamesLevelViewState createState() => _CountGamesLevelViewState();
}

class _CountGamesLevelViewState extends State<CountGamesLevelView> {
  Route _createRoute(
      String correctAnswer, List<String> rectangleValues, String quizQuestion) {
    return MaterialPageRoute(
      builder: (context) => CountPageView(
        correctAnswer: correctAnswer,
        rectangleValues: rectangleValues,
        quizQuestion: quizQuestion,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size mediaquerydata =
        MediaQuery.sizeOf(context); // Calculate one-third of the screen height
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
              onTap: () => Navigator.push(
                  context,
                  _createRoute(
                      LevelConstructor.firstLevelConstructor().correctAnswer,
                      LevelConstructor.firstLevelConstructor().rectangleValues,
                      LevelConstructor.firstLevelConstructor().quizQuestion)),
              child: const ColoredContainer(
                color: Color(0xFFB4F8C8),
                text: '1',
                txtcolor: Color(0xff18B74B),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  _createRoute(
                      LevelConstructor.secondLevelConstructor().correctAnswer,
                      LevelConstructor.secondLevelConstructor().rectangleValues,
                      LevelConstructor.secondLevelConstructor().quizQuestion)),
              child: const ColoredContainer(
                color: Color(0xFFA0E7E5),
                text: '2',
                txtcolor: Color(0xff199EC2),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  _createRoute(
                      LevelConstructor.thirdLevelConstructor().correctAnswer,
                      LevelConstructor.thirdLevelConstructor().rectangleValues,
                      LevelConstructor.thirdLevelConstructor().quizQuestion)),
              child: const ColoredContainer(
                color: Color(0xFFFFAEBC),
                text: '3',
                txtcolor: Color(0xffC55C6C),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  _createRoute(
                      LevelConstructor.fourthLevelConstructor().correctAnswer,
                      LevelConstructor.fourthLevelConstructor().rectangleValues,
                      LevelConstructor.fourthLevelConstructor().quizQuestion)),
              child: const ColoredContainer(
                color: Color(0xFFFBE7C6),
                text: '4',
                txtcolor: Color(0xffCA9719),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  _createRoute(
                      LevelConstructor.fifthLevelConstructor().correctAnswer,
                      LevelConstructor.fifthLevelConstructor().rectangleValues,
                      LevelConstructor.fifthLevelConstructor().quizQuestion)),
              child: const ColoredContainer(
                color: Color(0xFFB4F8C8),
                text: '5',
                txtcolor: Color(0xff18B74B),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  _createRoute(
                      LevelConstructor.sixthLevelConstructor().correctAnswer,
                      LevelConstructor.sixthLevelConstructor().rectangleValues,
                      LevelConstructor.sixthLevelConstructor().quizQuestion)),
              child: const ColoredContainer(
                color: Color(0xFFA0E7E5),
                text: '6',
                txtcolor: Color(0xff199EC2),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  _createRoute(
                      LevelConstructor.seventhLevelConstructor().correctAnswer,
                      LevelConstructor.seventhLevelConstructor()
                          .rectangleValues,
                      LevelConstructor.seventhLevelConstructor().quizQuestion)),
              child: const ColoredContainer(
                color: Color(0xFFFFAEBC),
                text: '7',
                txtcolor: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  _createRoute(
                      LevelConstructor.eightLevelConstructor().correctAnswer,
                      LevelConstructor.eightLevelConstructor().rectangleValues,
                      LevelConstructor.eightLevelConstructor().quizQuestion)),
              child: const ColoredContainer(
                color: Color(0xFFFBE7C6),
                text: '8',
                txtcolor: Color.fromARGB(255, 255, 255, 255),
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
  final String text; // Added property for the text

  const ColoredContainer({
    super.key,
    required this.color,
    required this.txtcolor,
    required this.text, // Constructor now requires the text
  });

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
