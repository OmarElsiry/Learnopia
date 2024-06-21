import 'dart:math';
import 'package:educational_kids_game/core/utils/screen_size.dart';
import 'package:flutter/material.dart';

class MatchPageViewBody extends StatefulWidget {
  final Map<int, String> choices;
  final Map<int, String> correctMatches;

  const MatchPageViewBody({
    super.key,
    required this.choices,
    required this.correctMatches,
  });

  @override
  _MatchPageViewBodyState createState() => _MatchPageViewBodyState();
}

class _MatchPageViewBodyState extends State<MatchPageViewBody> {
  final Map<int, bool> score = {};
  int seed = 0;

  @override
  Widget build(BuildContext context) {
    int correctMatchesCount = score.values.where((matched) => matched).length;
    final itemHeight = ScreenSize.height / 8;

    return Scaffold(
      appBar: AppBar(
        title: Text(" $correctMatchesCount Correct"),
        centerTitle: true, // Centers the title
        backgroundColor: Colors.orange, leading: null,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildDraggableItemsColumn(itemHeight),
          _buildTargetItemsColumn(itemHeight),
        ],
      ),
      floatingActionButton: Center(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton(
            onPressed: _popScreen
            //  _resetGame
            ,
            backgroundColor: Colors.orange,
            child: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
      ),
    );
  }

  Widget _buildDraggableItemsColumn(double itemHeight) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: widget.choices.keys.map((number) {
        return Draggable(
          data: number,
          feedback: _buildNumberFeedback(number),
          childWhenDragging:
              _buildNumberContainer(number, false, true, itemHeight),
          child: _buildNumberContainer(
              number, score[number] ?? false, false, itemHeight),
        );
      }).toList(),
    );
  }

  Widget _buildTargetItemsColumn(double itemHeight) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.correctMatches.entries
          .map((entry) =>
              _buildTextTarget(number: entry.key, itemHeight: itemHeight))
          .toList()
        ..shuffle(Random(seed)),
    );
  }

  Widget _buildNumberFeedback(int number) {
    return Material(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.orange, width: 2),
        ),
        padding: const EdgeInsets.all(10),
        child: Text(
          number.toString(),
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildNumberContainer(
      int number, bool isMatched, bool isPlaceholder, double itemHeight) {
    return Container(
      height: itemHeight,
      width: itemHeight,
      decoration: BoxDecoration(
        color: isMatched ? Colors.green : Colors.blue,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.orange, width: 2),
      ),
      margin: const EdgeInsets.all(5),
      child: Center(
        child: Text(
          isPlaceholder ? '🔢' : number.toString(),
          style: TextStyle(
            fontSize: 25,
            color: isMatched ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildTextTarget({required int number, required double itemHeight}) {
    return DragTarget<int>(
      builder: (BuildContext context, List incoming, List rejected) {
        return Container(
          height: itemHeight,
          width: itemHeight * 2.5,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.pink[100],
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.orange, width: 2),
          ),
          child: Center(
            child: score[number] == true
                ? const Text(
                    'Correct!',
                    style: TextStyle(fontSize: 25, color: Colors.green),
                  )
                : Text(
                    widget.correctMatches[number]!,
                    style: const TextStyle(fontSize: 25, color: Colors.black),
                  ),
          ),
        );
      },
      onWillAcceptWithDetails: (data) => data == number,
      onAcceptWithDetails: (data) {
        setState(() {
          score[number] = true;
        });
      },
    );
  }

  void _resetGame() {
    setState(() {
      score.clear();
      seed++;
    });
  }

  void _popScreen() {
    setState(() {
      Navigator.pop(context);
    });
  }
}
