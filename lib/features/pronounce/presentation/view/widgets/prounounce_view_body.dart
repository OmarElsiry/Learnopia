import 'dart:async';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ProunounceViewBody extends StatefulWidget {
  final String targetWord;

  const ProunounceViewBody({super.key, required this.targetWord});

  @override
  State<ProunounceViewBody> createState() => _ProunounceViewBodyState();
}

class _ProunounceViewBodyState extends State<ProunounceViewBody> {
  final SpeechToText speechToText = SpeechToText();
  bool speechEnable = false;
  String wordSpoken = '';
  double confidencePercentage = 0.0;
  List<String> spokenWords = [];
  bool dialogShown = false;
  bool isListening = false; // Track the listening state

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
    setState(() {
      isListening = true; // Start the animation
    });

    await speechToText.listen(onResult: onSpeechResult);
    setState(() {
      confidencePercentage = 0.0;
    });

    Timer(const Duration(seconds: 4), stopListening);
  }

  void stopListening() async {
    await speechToText.stop();
    if (mounted) {
      setState(() {
        isListening = false; // Stop the animation
      });
    }
  }

  @override
  void dispose() {
    speechToText.cancel();
    super.dispose();
  }

  void onSpeechResult(result) {
    if (mounted) {
      setState(() {
        wordSpoken = "${result.recognizedWords.toLowerCase()}";
        confidencePercentage = result.confidence;
        spokenWords.add(wordSpoken);

        String targetWord = widget.targetWord.toLowerCase();

        if (!dialogShown && spokenWords.contains(targetWord)) {
          dialogShown = true;

          Future.delayed(const Duration(milliseconds: 300), () {
            AwesomeDialog(
              context: context,
              dialogType: DialogType.success,
              animType: AnimType.rightSlide,
              title: 'Success',
              desc: 'Awesome job! You spelled "$targetWord" correctly.',
              btnOkOnPress: () {},
            ).show().then((_) {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Pronounce the word ${widget.targetWord}"),
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                wordSpoken,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 25,
                ),
              ),
            ),
            if (speechToText.isNotListening && confidencePercentage > 0)
              Text(
                'Confidence: ${(confidencePercentage * 100).toStringAsFixed(1)}%',
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                if (!isListening) {
                  startListening();
                }
              },
              child: isListening
                  ? const SpinKitRing(
                      color: Colors.blueGrey,
                      size: 50.0,
                    )
                  : const Icon(
                      Icons.mic_off,
                      size: 50.0,
                      color: Colors.blueGrey,
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
