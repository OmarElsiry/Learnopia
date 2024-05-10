import 'package:flutter/material.dart';
import 'package:flutter_gemini_bot/flutter_gemini_bot.dart';
import 'package:flutter_gemini_bot/models/chat_model.dart';

class ChatAiBot extends StatefulWidget {
  const ChatAiBot({super.key});
  

  @override
  State<ChatAiBot> createState() => _ChatAiBotState();
}

class _ChatAiBotState extends State<ChatAiBot> {
  List<ChatModel> chatList = []; // Your list of ChatModel objects
  String apikey = 'AIzaSyB9iHTCh87r2OyqvEyp1RF7uFvqVRXeklM';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: FlutterGeminiChat(
        chatContext: 'you are a Flutter app developer',
        chatList: chatList,
        apiKey: apikey,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}