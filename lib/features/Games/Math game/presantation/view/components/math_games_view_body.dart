import 'package:educational_kids_game/core/utils/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import '../count_games_level_page/count_games_levels_view.dart';
import '../match_page/match_page.dart';

class MyMathGamesScreen extends StatelessWidget {
  const MyMathGamesScreen({super.key});

  void _onTap(int index, BuildContext context) {
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CountGamesLevelView()),
      );
    }
    if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MatchPageView()),
      );
    }
    if (index == 3) {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) =>  CountPageView()),
      // );
    }
    if (index == 4) {
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) =>  CountPageView()),
      // );
    }
  }

  @override
  Widget build(BuildContext context) {
    final double screenheight = ScreenSize.height;
    final double screenwidth = ScreenSize.height;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: screenheight * 0.15,
            width: double.infinity,
            color: const Color(0xffFBDAB1),
            child: const Center(
              child: Text(
                "Math is Fun!",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w700,
                  fontSize: 48, // Adjusted font size
                  color: Color(0xffEE8B60), // Adjusted color
                ),
              ),
            ),
          ),
          Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: SvgPicture.asset(
                  'assets/images/mathGamesModes_boy.svg',
                  fit: BoxFit.cover,
                  height: 200,
                ),
              ),
            ],
          ),
          const SizedBox(
              height: 20), // Space between the image and the next widget
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () => _onTap(1, context),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: screenwidth * 0.2,
                        height: screenheight * 0.2,
                        color: const Color(0xFFB4F8C8),
                        child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '1 2 3',
                                style: TextStyle(
                                  color: Color(0xFF18B74B),
                                  fontFamily: 'Poppins-Bold',
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10), // Adjust spacing as needed
                              Text(
                                'Count',
                                style: TextStyle(
                                  color: Color(0xFF18B74B),
                                  fontFamily: 'Poppins-Bold',
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10), // Adjust spacing as needed
                  GestureDetector(
                    onTap: () => _onTap(2, context),
                    child: Container(
                      width: screenwidth * 0.2,
                      height: screenheight * 0.2,
                      decoration: BoxDecoration(
                        color: const Color(0xffA0E7E5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/gamesmoodesmatching.svg',
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              'Match',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                                color: Color(0xFF1BA7A6),
                                package: 'google_fonts_flutter',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 20), // Space between rows
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => _onTap(3, context),
                child: Container(
                  width: screenwidth * 0.2,
                  height: screenheight * 0.2,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFAEBC),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/gamesmoodes_pattern.svg',
                          fit: BoxFit.cover,
                        ),
                        const Text(
                          'Pattern',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: Color(0xffBE3E53),
                            package: 'google_fonts_flutter',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10), // Adjust spacing as needed
              GestureDetector(
                onTap: () => _onTap(4, context),
                child: Container(
                  width: screenwidth * 0.2,
                  height: screenheight * 0.2,
                  decoration: BoxDecoration(
                    color: const Color(0xffFBE7C6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/gamesmoodes_settings.svg',
                          fit: BoxFit.cover,
                        ),
                        const Text(
                          'Settings',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 24,
                            color: Color(0xffFFD76D),
                            package: 'google_fonts_flutter',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
