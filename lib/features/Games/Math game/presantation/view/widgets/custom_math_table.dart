import 'package:flutter/material.dart';

class CustomMathTable extends StatefulWidget {
  final List<String> numbers;
  final List<String> operators;
  final Color? buttonColor;
  final Color? textColor;
  final Color? pressedColor;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final Function(String, bool, int) onButtonPressed;
  final Function() onReset;

  const CustomMathTable({
    super.key,
    required this.numbers,
    required this.operators,
    this.buttonColor,
    this.textColor,
    this.pressedColor,
    this.foregroundColor,
    this.backgroundColor,
    required this.onButtonPressed,
    required this.onReset,
  });

  @override
  _CustomMathTableState createState() => _CustomMathTableState();
}

class _CustomMathTableState extends State<CustomMathTable> {
  final Map<int, String> _isPressed = {};

  @override
  Widget build(BuildContext context) {
    // Ensure sublist ranges do not go out of bounds
    int numLength = widget.numbers.length;
    int opLength = widget.operators.length;
    int minLength = (numLength < 3) ? numLength : 3;
    int minOpLength = (opLength < 3) ? opLength : 3;

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildColumn(widget.numbers.sublist(0, minLength), 0),
        _buildColumn(widget.operators.sublist(0, minOpLength), 1),
        _buildColumn(widget.numbers.sublist(minLength, numLength), 2),
      ],
    );
  }

  Widget _buildColumn(List<String> items, int columnIndex) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: items
          .map((item) => Padding(
                padding: const EdgeInsets.all(4.0),
                child: item.isNotEmpty
                    ? _buildButton(item, columnIndex)
                    : const SizedBox.shrink(),
              ))
          .toList(),
    );
  }

  Widget _buildButton(String item, int columnIndex) {
    return ValueListenableBuilder<bool>(
      valueListenable: ValueNotifier(_isPressed[columnIndex] == item),
      builder: (context, isPressed, child) {
        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: widget.foregroundColor ?? Colors.black,
            backgroundColor: isPressed
                ? widget.pressedColor ?? Colors.green
                : widget.backgroundColor ?? widget.buttonColor ?? Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            padding: EdgeInsets.zero,
            minimumSize: const Size(95, 85), // Adjust as needed
          ),
          onPressed: () {
            setState(() {
              // Toggle the selection state of the button
              if (_isPressed[columnIndex] == item) {
                _isPressed[columnIndex] = ''; // Deselect the button
              } else {
                _isPressed[columnIndex] = item; // Select the button
              }
            });
            // Only call the onButtonPressed function if the button is selected
            if (_isPressed[columnIndex] == item) {
              widget.onButtonPressed(
                  item, true, columnIndex); // Pass columnIndex
            }
          },
          child: Center(
            child: Text(
              item,
              style: const TextStyle(fontSize: 24),
            ),
          ),
        );
      },
    );
  }
}
