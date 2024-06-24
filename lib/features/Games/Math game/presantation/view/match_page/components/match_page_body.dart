import 'dart:math';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:educational_kids_game/core/utils/screen_size.dart';
import 'package:flutter/material.dart';

import '../../../../../../communicate_robot/send_message_flask.dart';

class MatchPageViewBody extends StatefulWidget {
  final Map<String, String> choices;

  const MatchPageViewBody({super.key, required this.choices});

  @override
  _MatchPageViewBodyState createState() => _MatchPageViewBodyState();
}

class _MatchPageViewBodyState extends State<MatchPageViewBody> {
  // Map to keep track of score
  final Map<String, bool> score = {};

  // Choices for game, mapping emojis to texts
  int seed = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
              height: ScreenSize.height * 0.2,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFFBDAB1),
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(
                    flex: 2,
                  ),
                  const Text(
                    'Match the numbers!',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 36,
                      color: Color(0xFFEE8B60),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Text(
                    "Score ${score.length} / 4",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Color(0xFFEE8B60),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: widget.choices.keys.map((emoji) {
                    return Draggable(
                      data: emoji,
                      feedback: Emoji(emoji: emoji),
                      childWhenDragging: Emoji(emoji: '👀'),
                      child: Emoji(emoji: score[emoji] == true ? '✅' : emoji),
                    );
                  }).toList(),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(widget.choices.keys.length, (index) {
                    final emoji = widget.choices.keys.elementAt(index);
                    return _buildDragTarget(emoji: emoji, index: index);
                  })
                    ..shuffle(Random(seed)),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(
                            8), // Padding inside the container
                        decoration: const BoxDecoration(
                          color: Color(0xFFF8DBAE), // Background color
                          shape:
                              BoxShape.circle, // Makes the container circular
                        ),
                        child: const Icon(
                          Icons.close_outlined,
                          size: 40, // Size of the icon
                          color: Color.fromARGB(255, 207, 91, 42), // Icon color
                        ),
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor:
                        const Color(0xFFF8DBAE), // Set the background color

                    child: const Icon(
                      Icons.done_all,
                      color: Color(0xffe6581c), // Set the icon color to #EC8B5C
                    ),
                    onPressed: () {
                      // Check if score length is 4
                      if (score.length == 4) {
                        sendMessageToRobotFlask("passed");

                        // Show success dialog
                        AwesomeDialog(
                            context: context,
                            dialogType: DialogType.success,
                            animType: AnimType.rightSlide,
                            title: 'Success!',
                            desc:
                                'Congratulations, you scored 4 correct answers.',
                            onDismissCallback: (dismissType) {
                              Navigator.pop(context);
                            }).show();
                      } else {
                        sendMessageToRobotFlask("failed");
                        // Show failure dialog
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.error,
                          animType: AnimType.rightSlide,
                          title: 'Retry',
                          desc: 'Sorry, you did not score enough points.',
                          btnOkOnPress: () {},
                        ).show();
                        score.clear();
                        seed++;
                        setState(() {}); // Update the UI
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDragTarget({required String emoji, required int index}) {
    return DragTarget<String>(
      builder: (BuildContext context, List incoming, List rejected) {
        Color targetColor;
        switch (index % 4) {
          case 0:
            targetColor = const Color(0xfffbe7c6);
            break;
          case 1:
            targetColor = const Color(0xffffaebc);
            break;
          case 2:
            targetColor = const Color(0xffa0e7e5);
            break;
          default:
            targetColor = const Color(0xffb4f8c8);
            break;
        }

        if (score[emoji] == true) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: targetColor,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              height: ScreenSize.height * 0.15,
              width: ScreenSize.width * 0.6,
              child: const Text(
                'Correct!',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 36.0,
                  height: 1.5,
                  color: Color(0xff000000),
                ),
              ),
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: targetColor,
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center,
              height: ScreenSize.height * 0.15,
              width: ScreenSize.width * 0.6,
              child: Center(
                child: Text(
                  widget.choices[emoji] ?? '',
                  style: const TextStyle(
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 36.0,
                    height: 1.5,
                    color: Color(0xff000000),
                  ),
                ),
              ),
            ),
          );
        }
      },
      onWillAccept: (data) => data == emoji,
      onAccept: (data) {
        setState(() {
          score[emoji] = true;
        });
      },
    );
  }
}

class Emoji extends StatelessWidget {
  final String emoji;

  Emoji({Key? key, required this.emoji}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          height: ScreenSize.height * 0.15,
          width: ScreenSize.width * 0.25,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: Text(
            emoji,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              fontSize: 36.0,
              height: 1.5,
              color: Color(0xff000000),
            ),
          ),
        ),
      ),
    );
  }
}
