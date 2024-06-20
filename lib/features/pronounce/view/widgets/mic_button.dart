import 'package:educational_kids_game/core/utils/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ripple_animation/ripple_animation.dart';

class MicButton extends StatefulWidget {
  final VoidCallback onPressed;
  final bool isListening; // New parameter

  const MicButton({
    super.key,
    required this.onPressed,
    required this.isListening, // Initialize with default value
  });

  @override
  State<MicButton> createState() => _MicButtonState();
}

class _MicButtonState extends State<MicButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        // Other properties...
        child: Center(
          child: widget.isListening
              ? RipplesAnimation(
                  color:
                      const Color.fromARGB(255, 45, 147, 219).withOpacity(0.5),
                  child: const Icon(Icons.mic, color: Colors.white, size: 30),
                )
              : Container(
                  width: ScreenSize.width * 0.25,
                  height: ScreenSize.height * 0.07,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFEB9F4A),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child:
                      const Icon(Icons.mic_off, color: Colors.white, size: 30),
                ),
        ),
      ),
    );
  }
}
