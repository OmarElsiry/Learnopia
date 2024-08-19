import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:educational_kids_game/features/communicate_robot/send_message_flask.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_recognition_result.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:async';

class ProunounceViewBody extends StatefulWidget {
  final String targetWords;

  ProunounceViewBody({Key? key, required this.targetWords}) : super(key: key);

  @override
  _ProunounceViewBodyState createState() => _ProunounceViewBodyState();
}

class _ProunounceViewBodyState extends State<ProunounceViewBody> {
  SpeechToText _speechToText = SpeechToText();
  bool _speechEnabled = false;
  List<String> recognizedWordsList = [];

  @override
  void initState() {
    super.initState();
    _initSpeech();
  }

  void _initSpeech() async {
    _speechEnabled = await _speechToText.initialize();
    setState(() {});
  }

  void _startListening() async {
    recognizedWordsList.clear();
    await _speechToText.listen(onResult: _onSpeechResult);
    print("Started listening...");
    setState(() {});
    Timer(Duration(seconds: 4), () {
      _stopListening();
    });
  }

  void _stopListening() async {
    await _speechToText.stop();
    setState(() {});
    _processCollectedWords();
  }

  void _onSpeechResult(SpeechRecognitionResult result) {
    if (result.recognizedWords.isNotEmpty) {
      recognizedWordsList.add(result.recognizedWords);
      print("Recognized words: ${result.recognizedWords}");
      print("List of all recognized words: $recognizedWordsList");
    }
  }

  void _processCollectedWords() {
    try {
      if (recognizedWordsList.isEmpty) {
        print("No words were recognized.");
        return;
      }

      String collectedWords = recognizedWordsList.join(' ');
      List<String> recognizedWords = collectedWords.split(' ');
      List<String> targetWordsList = widget.targetWords.split(' ');

      print('Final recognized words: $recognizedWords');
      print('Target words: $targetWordsList');

      bool matchFound = false;

      for (String recognizedWord in recognizedWords) {
        for (String targetWord in targetWordsList) {
          if (recognizedWord.toLowerCase() == targetWord.toLowerCase()) {
            print("Match found: $recognizedWord matches $targetWord (true)");
            matchFound = true;
            break;
          }
        }
      }

      if (matchFound) {
        sendMessageToRobotFlask("passed");
        print(true);
        recognizedWordsList.clear();
      } else {
        sendMessageToRobotFlask('${widget.targetWords}_Failed');
        print(false);
        recognizedWordsList.clear();
      }
    } catch (e) {
      print("Error processing speech result: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff47573).withOpacity(0.5),
      appBar: AppBar(
        title: Text(
          'Pronunciation Helper',
          style: TextStyle(
              color: Color(0xfff19f74),
              fontFamily: 'poppins',
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xfffbdab1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16),
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                      color: Color(0xfff19f74),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: 'Say the following words: ',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    TextSpan(
                        text: '${widget.targetWords}',
                        style: TextStyle(
                            fontSize: 20.0, color: Color(0xff18b74b))),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16),
                child: Text(
                  _speechToText.isListening
                      ? 'Listening...'
                      : _speechEnabled
                          ? 'Tap the microphone to start listening...'
                          : 'Speech not available',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 33.0),
              child: ElevatedButton(
                onPressed: _speechToText.isNotListening
                    ? _startListening
                    : _stopListening,
                child: _speechToText.isNotListening
                    ? Icon(Icons.mic_off)
                    : SpinKitWaveSpinner(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
