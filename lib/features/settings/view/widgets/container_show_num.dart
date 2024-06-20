import 'dart:async';
import 'package:flutter/material.dart';

class ShowNum extends StatefulWidget {
  const ShowNum(
      {super.key,
      required this.num,
      this.selected = false,
      required this.onSelected});
  final String num;
  final bool selected;
  final ValueChanged<bool> onSelected;

  @override
  State<ShowNum> createState() => _ShowNumState();
}

class _ShowNumState extends State<ShowNum> {
  bool isSelected = false;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    isSelected = widget.selected;
  }

  @override
  void dispose() {
    _timer?.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  void _selectNumber() {
    setState(() {
      isSelected = true;
    });
    widget.onSelected(true);
    _timer = Timer(const Duration(milliseconds: 225), () {
      setState(() {
        isSelected = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _selectNumber,
      child: Material(
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0.0,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: isSelected ? Colors.blue : Colors.white,
          ),
          child: Center(
            child: TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              onPressed: _selectNumber,
              child: Text(
                widget.num,
                style: const TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
