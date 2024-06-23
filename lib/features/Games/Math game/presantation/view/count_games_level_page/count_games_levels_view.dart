import 'package:educational_kids_game/core/utils/screen_size.dart';
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
  double screenHeight = ScreenSize.height;
  double screenWidth = ScreenSize.width;
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
    final num height = screenHeight;
    final num width = screenWidth;
    final double gridSpacing = width * 0.06;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          height: height * 0.15,
          color: const Color(0xffFBDAB1),
          child: const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Text(
                'Select Level',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  color: Color(0xffee8b60),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: height * 0.01),
          const Text(
            'Collected Stars',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: const Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 24,
                ),
              ),
              Text(
                '  ${CountLevels.passedLevelsCount} / 8    ',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0),
              child: GridView.count(
                crossAxisCount:
                    (width > 600) ? 3 : 2, // Adjust columns based on width
                childAspectRatio: 14 / 15,
                crossAxisSpacing: gridSpacing,
                mainAxisSpacing: gridSpacing,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (CountLevels.passedLevelsCount >= 0) {
                        Navigator.push(
                          context,
                          _createRoute(
                            LevelConstructor.firstLevelConstructor()
                                .correctAnswer,
                            LevelConstructor.firstLevelConstructor()
                                .rectangleValues,
                            LevelConstructor.firstLevelConstructor()
                                .quizQuestion,
                            "countgame1",
                          ),
                        );
                      }
                    },
                    child: ColoredContainer(
                      color: CountLevels.passedLevelsCount >= 0
                          ? const Color(0xFFB4F8C8)
                          : Colors.grey,
                      txtcolor: CountLevels.passedLevelsCount >= 0
                          ? const Color(0xff18B74B)
                          : Colors.grey,
                      starColor: CountLevels.passedLevelsCount >= 1
                          ? const Color(0xffffeb3b)
                          : const Color(0xFF808080),
                      text: '1',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (CountLevels.passedLevelsCount >= 1) {
                        Navigator.push(
                          context,
                          _createRoute(
                            LevelConstructor.secondLevelConstructor()
                                .correctAnswer,
                            LevelConstructor.secondLevelConstructor()
                                .rectangleValues,
                            LevelConstructor.secondLevelConstructor()
                                .quizQuestion,
                            "countgame2",
                          ),
                        );
                      }
                    },
                    child: ColoredContainer(
                      color: CountLevels.passedLevelsCount >= 1
                          ? const Color(0xFFA0E7E5)
                          : Colors.grey,
                      txtcolor: CountLevels.passedLevelsCount >= 1
                          ? const Color(0xff199EC2)
                          : Colors.grey,
                      starColor: CountLevels.passedLevelsCount >= 2
                          ? const Color(0xffffeb3b)
                          : const Color(0xFF808080),
                      text: '2',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (CountLevels.passedLevelsCount >= 2) {
                        Navigator.push(
                          context,
                          _createRoute(
                            LevelConstructor.thirdLevelConstructor()
                                .correctAnswer,
                            LevelConstructor.thirdLevelConstructor()
                                .rectangleValues,
                            LevelConstructor.thirdLevelConstructor()
                                .quizQuestion,
                            "countgame3",
                          ),
                        );
                      }
                    },
                    child: ColoredContainer(
                      color: CountLevels.passedLevelsCount >= 2
                          ? const Color(0xFFFFAEBC)
                          : Colors.grey,
                      txtcolor: CountLevels.passedLevelsCount >= 2
                          ? const Color(0xffC55C6C)
                          : Colors.grey,
                      starColor: CountLevels.passedLevelsCount >= 3
                          ? const Color(0xffffeb3b)
                          : const Color(0xFF808080),
                      text: '3',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (CountLevels.passedLevelsCount >= 3) {
                        Navigator.push(
                          context,
                          _createRoute(
                            LevelConstructor.fourthLevelConstructor()
                                .correctAnswer,
                            LevelConstructor.fourthLevelConstructor()
                                .rectangleValues,
                            LevelConstructor.fourthLevelConstructor()
                                .quizQuestion,
                            "countgame4",
                          ),
                        );
                      }
                    },
                    child: ColoredContainer(
                      color: CountLevels.passedLevelsCount < 3
                          ? Colors.grey
                          : const Color(0xFFFBE7C6),
                      txtcolor: CountLevels.passedLevelsCount >= 3
                          ? const Color(0xffC55C6C)
                          : Colors.grey,
                      starColor: CountLevels.passedLevelsCount >= 4
                          ? const Color(0xffffeb3b)
                          : Colors.grey,
                      text: '4',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (CountLevels.passedLevelsCount >= 4) {
                        Navigator.push(
                          context,
                          _createRoute(
                            LevelConstructor.fifthLevelConstructor()
                                .correctAnswer,
                            LevelConstructor.fifthLevelConstructor()
                                .rectangleValues,
                            LevelConstructor.fifthLevelConstructor()
                                .quizQuestion,
                            "countgame5",
                          ),
                        );
                      }
                    },
                    child: ColoredContainer(
                      color: CountLevels.passedLevelsCount < 4
                          ? Colors.grey
                          : const Color(0xffB4F8C8),
                      txtcolor: CountLevels.passedLevelsCount >= 4
                          ? const Color(0xff18B74B)
                          : Colors.grey,
                      starColor: CountLevels.passedLevelsCount >= 5
                          ? const Color(0xffffeb3b)
                          : Colors.grey,
                      text: '5',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (CountLevels.passedLevelsCount >= 5) {
                        Navigator.push(
                          context,
                          _createRoute(
                            LevelConstructor.sixthLevelConstructor()
                                .correctAnswer,
                            LevelConstructor.sixthLevelConstructor()
                                .rectangleValues,
                            LevelConstructor.sixthLevelConstructor()
                                .quizQuestion,
                            "countgame6",
                          ),
                        );
                      }
                    },
                    child: ColoredContainer(
                      color: CountLevels.passedLevelsCount < 5
                          ? Colors.grey
                          : const Color(0xffA0E7E5),
                      txtcolor: CountLevels.passedLevelsCount >= 5
                          ? const Color(0xff199EC2)
                          : Colors.grey,
                      starColor: CountLevels.passedLevelsCount >= 6
                          ? const Color(0xffffeb3b)
                          : Colors.grey,
                      text: '6',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (CountLevels.passedLevelsCount >= 6) {
                        Navigator.push(
                          context,
                          _createRoute(
                            LevelConstructor.seventhLevelConstructor()
                                .correctAnswer,
                            LevelConstructor.seventhLevelConstructor()
                                .rectangleValues,
                            LevelConstructor.seventhLevelConstructor()
                                .quizQuestion,
                            "countgame7",
                          ),
                        );
                      }
                    },
                    child: ColoredContainer(
                      color: CountLevels.passedLevelsCount < 6
                          ? Colors.grey
                          : const Color(0xFFFFAEBC),
                      txtcolor: CountLevels.passedLevelsCount >= 6
                          ? const Color(0xff199EC2)
                          : Colors.grey,
                      starColor: CountLevels.passedLevelsCount >= 7
                          ? const Color(0xffffeb3b)
                          : Colors.grey,
                      text: '7',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      if (CountLevels.passedLevelsCount >= 7) {
                        Navigator.push(
                          context,
                          _createRoute(
                            LevelConstructor.eightLevelConstructor()
                                .correctAnswer,
                            LevelConstructor.eightLevelConstructor()
                                .rectangleValues,
                            LevelConstructor.eightLevelConstructor()
                                .quizQuestion,
                            "countgame8",
                          ),
                        );
                      }
                    },
                    child: ColoredContainer(
                      color: CountLevels.passedLevelsCount < 7
                          ? Colors.grey
                          : const Color(0xFFFBE7C6),
                      txtcolor: CountLevels.passedLevelsCount >= 7
                          ? const Color(0xffC55C6C)
                          : Colors.grey,
                      starColor: CountLevels.passedLevelsCount >= 8
                          ? const Color(0xffffeb3b)
                          : Colors.grey,
                      text: '8',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ColoredContainer extends StatelessWidget {
  final Color color;
  final Color txtcolor;
  final Color starColor;
  final String text;

  const ColoredContainer({
    super.key,
    required this.color,
    required this.txtcolor,
    required this.starColor,
    required this.text,
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 48,
                    color: txtcolor,
                    shadows: [
                      Shadow(
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                        color: Colors.black.withOpacity(0.25),
                      )
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(44),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 231, 210, 210)
                              .withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 5.18927,
                          offset: const Offset(0, 5.18927),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.star,
                      color: starColor,
                      size: ScreenSize.height * 0.04,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
