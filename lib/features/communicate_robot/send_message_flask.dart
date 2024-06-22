import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void sendMessageToRobotFlask(String message) async {
  var url = Uri.parse('http://172.20.10.6:51000/print_message');

  try {
    var response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: json.encode({"message": message}),
    );

    if (response.statusCode == 200) {
      if (kDebugMode) {
        print('Message sent successfully to the robot');
      }
    } else {
      if (kDebugMode) {
        print('Failed to send message to the robot');
      }
    }
  } catch (_) {
    // Wait for 5 seconds before showing the snack bar
    Future.delayed(const Duration(seconds: 5), () {
      print("robot not found $e");
    });
  }
}
