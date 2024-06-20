import 'package:educational_kids_game/core/utils/screen_size.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Viewresults extends StatelessWidget {
  Viewresults({super.key});
  final double screenWidth = ScreenSize.width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      width: double.infinity,
      child: Stack(
        children: [
          const Positioned(
            left: 10,
            child: CustomContainerView(
              title: '3',
              subtitle: 'Day points',
            ),
          ),
          const Positioned(
            top: 70,
            left: 10,
            child: CustomContainerView(
              title: '1432',
              subtitle: 'Total XP',
            ),
          ),
          Positioned(
            left: screenWidth * 0.52,
            child: const CustomContainerView(
              title: 'Bronze',
              subtitle: 'quiz grades',
            ),
          ),
          Positioned(
            top: 70,
            left: screenWidth * 0.52,
            child: const CustomContainerView(
              title: '2',
              subtitle: 'Top 3 Finishes',
            ),
          ),
          Positioned(
            top: 15,
            left: screenWidth * 0.55,
            child: Image.asset('assets/images/Flash.png'),
          ),
          Positioned(
            top: 10,
            left: screenWidth * 0.07,
            child: Image.asset('assets/images/Fire.png'),
          ),
          Positioned(
            top: 90,
            left: screenWidth * 0.07,
            child: const Icon(FontAwesomeIcons.coins),
          ),
          Positioned(
            top: 85,
            left: screenWidth * 0.55,
            child: const Icon(FontAwesomeIcons.trophy),
          )
        ],
      ),
    );
  }
}

class CustomContainerView extends StatelessWidget {
  const CustomContainerView(
      {super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61,
      width: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.black.withOpacity(0.4),
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title),
          Text(subtitle),
        ],
      ),
    );
  }
}
