import 'dart:async';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:educational_kids_game/core/utils/screen_size.dart';
import 'package:educational_kids_game/features/communicate_robot/send_message_flask.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:speech_to_text/speech_to_text.dart';

class PronounceViewBody extends StatefulWidget {
  final String targetWord;

  const PronounceViewBody({super.key, required this.targetWord});

  @override
  State<PronounceViewBody> createState() => _PronounceViewBodyState();
}

class _PronounceViewBodyState extends State<PronounceViewBody> {
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

        // if (!dialogShown && !spokenWords.contains(targetWord)) {
        //   sendMessageToRobotFlask("$spokenWords");
        // }
        // Only show the dialog if it hasn't been shown yet
        if (!dialogShown && spokenWords.contains(targetWord)) {
          dialogShown = true;

          // Wait for a short duration before navigating back
          Future.delayed(const Duration(milliseconds: 300), () {
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
    return Column(
      children: [
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Speech To Text',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: const Color.fromARGB(226, 103, 133, 242),
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
          ),
        ),
        const SizedBox(height: 20), // Adjust the height as needed
        bottomNavigationBar(),
      ],
    );
  }

  Widget bottomNavigationBar() {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: SizedBox(
        width: ScreenSize.width * 0.6,
        child: InkWell(
          onTap: () async {
            if (speechToText.isListening) {
              // Stop listening after 4 seconds
              Timer(const Duration(seconds: 4), () async {
                stopListening();
              });
            } else {
              // Start listening and then stop after 4 seconds
              startListening();
              Timer(const Duration(seconds: 4), stopListening);
            }
          },
          child: Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(24),
            ),
            child: speechToText.isNotListening
                ? Transform.scale(
                    scale: 1.5,
                    child: SizedBox(
                      height: ScreenSize.height * 0.08,
                      width: ScreenSize.width * 0.7,
                      child: const Icon(Icons.mic_none,
                          color: Color.fromARGB(255, 74, 109, 235)),
                    ),
                  )
                : SizedBox(
                    height: ScreenSize.height * 0.08,
                    width: ScreenSize.width * 0.7,
                    child: SpinKitWave(
                      itemCount: 9,
                      size: ScreenSize.height * 0.07,
                      type: SpinKitWaveType.start,
                      color: const Color(0xffeb9f4a),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
