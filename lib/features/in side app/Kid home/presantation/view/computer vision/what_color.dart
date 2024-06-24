import 'package:flutter/material.dart';
import '../../../../../communicate_robot/send_message_flask.dart';

class ColorDetectionPage extends StatefulWidget {
  const ColorDetectionPage({Key? key}) : super(key: key);

  @override
  _ColorDetectionPageState createState() => _ColorDetectionPageState();
}

class _ColorDetectionPageState extends State<ColorDetectionPage> {
  bool _isDetectingColor = false; // Initialize your state variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color Detection'),
      ),
      body: Center(
        child: Switch(
          value: _isDetectingColor,
          onChanged: (value) {
            setState(() {
              _isDetectingColor = value;
              if (_isDetectingColor) {
                sendMessageToRobotFlask('colordetect');
              }
            });
          },
          activeTrackColor: Colors.lightGreenAccent,
          activeColor: Colors.green,
          inactiveThumbColor: Colors.grey,
          inactiveTrackColor: Colors.white,
          // Customize the appearance of the switch as needed
        ),
      ),
    );
  }
}
