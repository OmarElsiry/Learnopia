import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:educational_kids_game/core/utils/screen_size.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  final List<Map<String, dynamic>> quizData;

  const QuizPage({super.key, required this.quizData});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentStage = 0;
  int selectedAnswerIndex = -1;
  bool showCorrectAnswer = false;
  List<Color> optionColors = [
    const Color(0xffb4f8c8),
    const Color(0xffa0e7e5),
    const Color(0xffffaebc),
    const Color(0xfffbe7c6),
    const Color(0xff77f6d9),
  ];
  void checkAnswer(int index) {
    if (index == widget.quizData[currentStage]['correctAnswerIndex']) {
      setState(() {
        selectedAnswerIndex = index;
        showCorrectAnswer = true;
      });

      Future.delayed(const Duration(microseconds: 200), () {
        setState(() {
          showCorrectAnswer = false;
          if (currentStage < widget.quizData.length - 1) {
            currentStage++;
          } else {
            _showSuccessDialog(context);
          }
        });
      });
    } else {
      // Optionally, show a message or perform some action for the wrong answer
    }
  }

  void _showSuccessDialog(BuildContext context) {
    AwesomeDialog(
      context: context,
      dialogType: DialogType.success,
      animType: AnimType.topSlide,
      title: 'Success!',
      desc: 'You have completed the quiz.',
      btnOkOnPress: () {},
      onDismissCallback: (dismissType) {
        Navigator.pop(context);
      },
    ).show();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Align(
              widthFactor: 4.8,
              alignment: Alignment.topLeft,
              child: Text(
                "Quiz ${currentStage + 1}",
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  height: 1.375,
                  color: Colors.black.withOpacity(0.87),
                ),
              )),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(widget.quizData.length, (index) {
              Color circleColor;
              if (index < currentStage) {
                circleColor = Color.fromARGB(255, 152, 196, 233);
              } else if (index == currentStage) {
                circleColor = const Color(0xffFfffff);
              } else {
                circleColor = const Color(0xfff0ebeb);
              }
              return CircleAvatar(
                radius: 20,
                backgroundColor: circleColor,
                child: Text('${index + 1}'),
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              width: ScreenSize.width * 0.9,
              height: ScreenSize.height * 0.3,
              margin:
                  const EdgeInsets.all(4), // Center the container horizontally
              decoration: BoxDecoration(
                color: Colors.grey[200], // Grey background
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                widget.quizData[currentStage]['question'],
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold, // Equivalent to font-weight: 700
                  fontSize:
                      ScreenSize.height * 0.04, // Directly taken from the CSS
                  height: 1.875, // Approximation of line-height: 87.52%
                  color: Colors.black, // Equivalent to color: #000000
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio:
                    1 / 1.01, // Adjusted aspect ratio for better fit
              ),
              itemCount: widget.quizData[currentStage]['options'].length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: GestureDetector(
                    onTap: () => checkAnswer(index),
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: optionColors[index % optionColors.length],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        widget.quizData[currentStage]['options'][index],
                        style: TextStyle(
                          fontFamily:
                              'Poppins', // Ensure you have imported the font
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w600,
                          fontSize: ScreenSize.height / 30,
                          color: const Color(0xFF1BA7A6),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
