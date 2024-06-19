import 'dart:async';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';

class ProunounceViewBody extends StatefulWidget {
  final String targetWord;

  const ProunounceViewBody({Key? key, required this.targetWord})
      : super(key: key);

  @override
  State<ProunounceViewBody> createState() => _ProunounceViewBodyState();
}

class _ProunounceViewBodyState extends State<ProunounceViewBody> {
  final SpeechToText speechToText = SpeechToText();
  bool speechEnable = false;
  String wordSpoken = '';
  double confidencePercentage = 0.0;
  List<String> spokenWords = [];
  bool dialogShown = false; // Add this line

  @override
  void initState() {
    super.initState();
    initSpeech();
  }

  void initSpeech() async {
    speechEnable = await speechToText.initialize();
    setState(() {});
  }

  void startListening() async {
    spokenWords.clear();

    await speechToText.listen(onResult: onSpeechResult);
    setState(() {
      confidencePercentage = 0.0;
    });
  }

  void stopListening() async {
    await speechToText.stop();
    if (mounted) {
      // Check if the widget is still mounted
      setState(() {});
    }
  }

  @override
  void dispose() {
    speechToText.cancel(); // Cancel the speech-to-text operation
    super.dispose();
  }

  void onSpeechResult(result) {
    if (mounted) {
      setState(() {
        wordSpoken = "${result.recognizedWords.toLowerCase()}";
        confidencePercentage = result.confidence;
        spokenWords.add(wordSpoken);

        String targetWord = widget.targetWord.toLowerCase();

        // Only show the dialog if it hasn't been shown yet
        if (!dialogShown && spokenWords.contains(targetWord)) {
          dialogShown = true;

          // Wait for a short duration before navigating back
          Future.delayed(Duration(milliseconds: 300), () {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.success,
              animType: AnimType.rightSlide,
              title: 'Success',
              desc: 'Awesome job You spelled "$targetWord" correctly.',
              btnOkOnPress: () {},
            ).show().then((_) {
              // Assuming.show() returns a Future that completes when the dialog is dismissed
              Navigator.pop(context);
            });
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Speech To Text',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Prounounce the word ${widget.targetWord}"),
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                wordSpoken,
                style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontSize: 25),
              ),
            ),
            if (speechToText.isNotListening && confidencePercentage > 0)
              Text(
                'Confidence: ${(confidencePercentage * 100).toStringAsFixed(1)}',
                style: const TextStyle(
                    fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (speechToText.isListening) {
            // Stop listening after 4 seconds
            Timer(Duration(seconds: 4), () async {
              stopListening();
              setState(() {
                speechEnable = false;
              });
            });
          } else {
            // Start listening and then stop after 4 seconds
            startListening();
            Timer(Duration(seconds: 4), stopListening);
            setState(() {
              speechEnable = false;
            });
          }
        },
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        child: Icon(speechToText.isNotListening ? Icons.mic_off : Icons.mic),
      ),
    );
  }
}
