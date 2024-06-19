import 'dart:async';

import 'package:educational_kids_game/features/settings/presantation/view/widgets/container_show_num.dart';
import 'package:flutter/material.dart';

class ShowNumSection extends StatefulWidget {
  const ShowNumSection({
    super.key, // Correctly use Key? key for passing the key to the superclass
    required this.onSelectedNumsChanged,
  }); // Pass the key to the superclass constructor

  final Function(List<String>) onSelectedNumsChanged;

  @override
  State<ShowNumSection> createState() => _ShowNumSectionState();
}

class _ShowNumSectionState extends State<ShowNumSection> {
  List<String> selectedNums = [];
  List<String> enteredNums = []; // New state variable to track entered numbers
  Timer? _timer; // Declare a Timer variable

  void onSelected(String num, bool value) {
    setState(() {
      if (enteredNums.length < 4) {
        if (value) {
          selectedNums.add(num);
          enteredNums.add(num); // Add the selected number to enteredNums
        } else {
          selectedNums.remove(num);
          enteredNums
              .remove(num); // Remove the deselected number from enteredNums
        }
      }
      widget.onSelectedNumsChanged(selectedNums);
    });
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        children: [
          // Display the entered numbers in the same arrangement
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(4, (index) => _buildNumDisplay(index)),
          ),
          const SizedBox(
              height:
                  20), // Add some space between the entered numbers and the number selection
          Table(
            columnWidths: const {
              0: FlexColumnWidth(1),
              1: FlexColumnWidth(1),
              2: FlexColumnWidth(1),
            },
            children: [
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: ShowNum(
                      num: '1',
                      onSelected: (bool value) => onSelected('1', value),
                      selected: selectedNums.contains('1'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: ShowNum(
                      num: '2',
                      onSelected: (bool value) => onSelected('2', value),
                      selected: selectedNums.contains('2'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: ShowNum(
                      num: '3',
                      onSelected: (bool value) => onSelected('3', value),
                      selected: selectedNums.contains('3'),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: ShowNum(
                      num: '4',
                      onSelected: (bool value) => onSelected('4', value),
                      selected: selectedNums.contains('4'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: ShowNum(
                      num: '5',
                      onSelected: (bool value) => onSelected('5', value),
                      selected: selectedNums.contains('5'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: ShowNum(
                      num: '6',
                      onSelected: (bool value) => onSelected('6', value),
                      selected: selectedNums.contains('6'),
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: ShowNum(
                      num: '7',
                      onSelected: (bool value) => onSelected('7', value),
                      selected: selectedNums.contains('7'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: ShowNum(
                      num: '8',
                      onSelected: (bool value) => onSelected('8', value),
                      selected: selectedNums.contains('8'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, top: 8.0),
                    child: ShowNum(
                      num: '9',
                      onSelected: (bool value) => onSelected('9', value),
                      selected: selectedNums.contains('9'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNumDisplay(int index) {
    // Assuming enteredNums is a list of strings representing the entered numbers
    // and index is the position of the number in the enteredNums list
    String? numText = index < enteredNums.length ? enteredNums[index] : null;
    Color numColor = numText != null ? const Color(0xFF3366CC) : Colors.white;

    // Check if this is the last entered number
    bool isLastEnteredNum = index == enteredNums.length - 1 && numText != null;

    // If this is the last entered number, start a timer to change it after 1.5 seconds
    if (isLastEnteredNum) {
      _timer = Timer(const Duration(milliseconds: 850), () {
        if (mounted) {
          // Check if the widget is still in the tree
          setState(() {
            enteredNums[index] = '*';
          });
        }
      });
    }

    return Container(
      width: 52,
      height: 52,
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: numColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 20,
            offset: Offset(0, 10),
            spreadRadius: 0,
          )
        ],
      ),
      child: Center(
        child: numText != null
            ? Text(
                numText,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                  height: 0.05,
                ),
              )
            : Container(), // Empty container if no number is present
      ),
    );
  }
}
