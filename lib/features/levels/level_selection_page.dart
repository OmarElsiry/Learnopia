import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import the flutter_svg package
// Import the math library

class LevelSelectionPage extends StatelessWidget {
  static const String routeName = '/level-selection';

  final List<List<String>> groupedLevelImages = [
    [
      'Beep Beep Horse.png',
      'Dayflow Black Cat.png',
      'Ellipse 1.png'
    ], // Levels 1-3
    [
      'Beep Beep Horse.png',
      'Dayflow Black Cat.png',
      'Ellipse 1.png'
    ], // Levels 4-6
    // Add more groups as needed
  ];

  LevelSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Your Level'),
      ),
      body: ListView.builder(
        itemCount: groupedLevelImages.length,
        itemBuilder: (context, index) {
          final logos = groupedLevelImages[index];
          final numLogos = logos.length;
          const svgHeight =
              946; // Placeholder for SVG height, adjust based on actual measurement

          return Stack(
            children: [
              SvgPicture.asset('assets/images/levels_map.svg',
                  fit: BoxFit.cover),
              ...logos.asMap().entries.map((entry) {
                int idx = entry.key;
                String logoPath = entry.value;

                // Calculate position based on vertical distribution
                double top =
                    idx * (svgHeight / numLogos) - 50; // Adjust for logo size
                double left = 50; // Adjust horizontal positioning as needed

                return Positioned(
                  top: top,
                  left: left,
                  child: Image.asset('assets/images/$logoPath',
                      width: 100, height: 100),
                );
              }),
            ],
          );
        },
      ),
    );
  }
}
