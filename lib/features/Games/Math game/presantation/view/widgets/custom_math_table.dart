import 'package:flutter/material.dart';

// custom_math_table.dart

class CustomMathTable extends StatefulWidget {
  final List<String> numbers;
  final List<String> operators;
  final Color? buttonColor;
  final Color? textColor;
  final Color? pressedColor;
  final Color? foregroundColor;
  final Color? backgroundColor;
  final Function(String, bool, int)
      onButtonPressed; // Updated to include columnIndex

  // In the CustomMathTable widget
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _buildColumn(widget.numbers.sublist(0, 3), 0),
        _buildColumn(widget.operators.sublist(0, 3), 1),
        _buildColumn(widget.numbers.sublist(3, 6), 2),
      ],
    );
  }

  Widget _buildColumn(List<String> items, int columnIndex) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: items
          .map((item) => Padding(
                padding: const EdgeInsets.all(4.0),
                child: _buildButton(item, columnIndex),
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
            minimumSize: const Size(
                95, 85), // TODO: this is sub-square dimensions , edit later
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
