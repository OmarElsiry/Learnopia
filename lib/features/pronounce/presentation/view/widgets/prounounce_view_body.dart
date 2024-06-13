import 'package:flutter/material.dart';
import 'package:flutter_ripple_animation/ripple_animation.dart';

class ProunounceViewBody extends StatefulWidget {
  const ProunounceViewBody({super.key});

  @override
  _ProunounceViewBodyState createState() => _ProunounceViewBodyState();
}

class _ProunounceViewBodyState extends State<ProunounceViewBody> {
  bool _isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 0.08 * screenHeight),
            Image.asset('assets/images/robotAndOvals.png', fit: BoxFit.cover),
            const Text(
              'Welcome Back',
              style: TextStyle(
                fontFamily: 'Kanit',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w300,
                fontSize: 26,
                color: Color(0xFF747474),
              ),
            ),
            const Text(
              'How Can I Help you today?',
              style: TextStyle(
                fontFamily: 'Kanit',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 26,
                color: Color(0xFF393939),
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: screenHeight * 0.035,
            ),
            GestureDetector(
              onTapDown: (_) {
                setState(() {
                  _isButtonPressed = true;
                });
              },
              onTapUp: (_) {
                Future.delayed(const Duration(milliseconds: 100), () {
                  setState(() {
                    _isButtonPressed = false;
                  });
                });
              },
              onLongPressEnd: (_) {
                setState(() {
                  _isButtonPressed = false;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                curve: Curves.easeInOut,
                width: screenWidth * 0.3,
                height: screenHeight * 0.08,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _isButtonPressed
                      ? Colors.blue.withOpacity(0.5)
                      : Colors.transparent,
                ),
                child: Center(
                  // Center the icon
                  child: _isButtonPressed
                      ? RipplesAnimation(
                          color: const Color.fromARGB(255, 45, 147, 219)
                              .withOpacity(0.5),
                          child: const Icon(
                            Icons.mic_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        )
                      : Container(
                          width: screenWidth * 0.25,
                          height: screenHeight * 0.07,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: const Color(
                                0xFFEB9F4A), // Set the color to EB9F4A
                            borderRadius: BorderRadius.circular(
                                12), // Adds rounded corners
                          ),
                          child: const Icon(
                            Icons.mic_off_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.08),
            Container(
              height: screenHeight * 0.08,
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                color: const Color(0xffEB9F4A),
                borderRadius:
                    BorderRadius.circular(7), // Adjust the radius as needed
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Apple',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      fontSize: 16, // Adjusted to match the CSS font-size
                      color: Colors.white, // Matches the CSS color
                      height: 1.25, // Line height equivalent in Flutter
                    ),
                  ),
                  Transform.translate(
                    offset: const Offset(50, 0),
                    child: CircleAvatar(
                      radius: 16, // Reduced from 24 to 16
                      backgroundColor: Colors.green.withOpacity(0.6),
                      child: const Icon(Icons.favorite, color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
