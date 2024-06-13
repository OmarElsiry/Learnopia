import 'package:flutter/material.dart';
import 'package:otp_pin_field/otp_pin_field.dart';

import '../puzzle_game_view.dart';

int levelcount = 1;

class ViewOtp extends StatefulWidget {
  final String correctAnswer;
  final String imageName;

  const ViewOtp(
      {super.key, required this.correctAnswer, required this.imageName});

  @override
  State<ViewOtp> createState() => _ViewOtpState();
}

class _ViewOtpState extends State<ViewOtp> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();
  bool success = false;
  String userInput = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OtpPinField(
          keyboardType: TextInputType.name,
          key: _otpPinFieldController,
          autoFillEnable: false,
          textInputAction: TextInputAction.done,
          onChange: (text) {
            setState(() {
              userInput = text; // Update userInput on change
            });
          },
          onSubmit:
              (value) {}, // Placeholder function to satisfy the requirement
          otpPinFieldStyle: OtpPinFieldStyle(
            defaultFieldBorderColor: success ? Colors.green : Colors.red,
            activeFieldBorderColor: Colors.indigo,
            defaultFieldBackgroundColor: Colors.yellow,
            activeFieldBackgroundColor: Colors.cyanAccent,
            filledFieldBackgroundColor: Colors.green,
          ),
          maxLength: 4,
          showCursor: true,
          cursorColor: Colors.indigo,
          upperChild: const Column(
            children: [
              SizedBox(height: 30),
              Icon(Icons.flutter_dash_outlined, size: 150),
              SizedBox(height: 20),
            ],
          ),
        ),
        Container(
          width: 324,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color(0xffF55454),
          ),
          child: TextButton(
            onPressed: () {
              if (userInput == widget.correctAnswer) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Success You entered "$userInput".'),
                  ),
                );
                setState(() {
                  success = true;
                  levelcount += 1;
                  Navigator.pop(context); // Navigates back when successful
                });
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Fauiler please try again')),
                );
                setState(() {
                  success = false;
                  // Assuming you want to navigate to a new PuzzleGameView with the same correctAnswer if the input is wrong
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PuzzleGameView(
                        correctAnswer: widget.correctAnswer,
                        imageName:
                            widget.imageName, // Using the same correctAnswer
                      ),
                    ),
                  );
                });
              }
            },
            child: const Center(
              child: Text(
                'Next',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
