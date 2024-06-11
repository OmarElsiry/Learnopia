import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void sendMessageToRobot(String message) async {
  var url = Uri.parse('http://192.168.1.2:51000/print_message');
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
}
