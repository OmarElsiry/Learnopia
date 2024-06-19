import 'dart:math';
import 'package:flutter/material.dart';

class MatchPageViewBody extends StatefulWidget {
  const MatchPageViewBody({super.key});

  @override
  _MatchPageViewBody createState() => _MatchPageViewBody();
}

class _MatchPageViewBody extends State<MatchPageViewBody> {
  // Map to keep track of score
  final Map<String, bool> score = {};
  final List<String> texts = ['تفح', 'لمن', 'طمطم', 'عنب'];
  // Choices for game
  final Map choices = {
    '🍏': Colors.green,
    '🍋': Colors.yellow,
    '🍅': Colors.red,
    '🍇': Colors.purple,
    // '🥥': Colors.brown,
    // '🥕': Colors.orange
  };

  int seed = 0;

  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.sizeOf(context);
    var screenheight = mediaQueryData.height;
    var screenwidth = mediaQueryData.height;
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.refresh),
            onPressed: () {
              score.clear();
              seed++;
              setState(() {});
            },
          ),
          body: Column(
            children: [
              Container(
                height: screenheight * 0.15,
                color: const Color(0xffFBDAB1),
                child: Center(
                  child: Text(
                    "Score ${score.length} / 4",
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 41, // Adjusted font size
                      color: Color(0xffEE8B60), // Adjusted color
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: choices.keys.map((emoji) {
                      return Padding(
                        padding: EdgeInsets.only(
                            top: screenheight * 0.007,
                            bottom: screenwidth * 0.01),
                        child: Draggable(
                          data: emoji,
                          feedback: Emoji(emoji: emoji),
                          childWhenDragging: const Emoji(emoji: '🌱'),
                          child:
                              Emoji(emoji: score[emoji] == true ? '✅' : emoji),
                        ),
                      );
                    }).toList(),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: choices.keys
                        .map((emoji) => Padding(
                              padding: EdgeInsets.only(
                                  top: screenheight * 0.007,
                                  bottom: screenwidth * 0.025),
                              child: _buildDragTarget(emoji: emoji),
                            ))
                        .toList()
                      ..shuffle(Random(seed)),
                  ),
                ],
              ),
            ],
          )),
    );
  }

  Widget _buildDragTarget({required String emoji}) {
    int index = choices.keys.toList().indexOf(emoji);
    Color containerColor =
        choices[emoji]; // Get the color associated with the emoji

    return DragTarget<String>(
      builder: (BuildContext context, List incoming, List rejected) {
        if (score[emoji] == true) {
          return Container(
            color: Colors.white,
            alignment: Alignment.center,
            height: 80,
            width: 200,
            child: const Text(
              'Correct!',
              style: TextStyle(fontSize: 25),
            ),
          );
        } else {
          return Container(
            decoration: BoxDecoration(
              color: containerColor, // Use the color associated with the emoji
              borderRadius:
                  BorderRadius.circular(10), // Adjust the radius as needed
            ),
            height: 80,
            width: 200,
            child: Center(
              child: Text(
                texts[index], // Displaying the text from the list
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 25),
              ),
            ),
          );
        }
      },
      onWillAcceptWithDetails: (data) => data == emoji,
      onAcceptWithDetails: (data) {
        setState(() {
          score[emoji] = true;
        });
      },
    );
  }
}

class Emoji extends StatelessWidget {
  final String emoji;

  const Emoji({super.key, required this.emoji});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: 100,
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Text(
          emoji,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
