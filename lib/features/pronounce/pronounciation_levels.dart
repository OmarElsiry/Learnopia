import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/utils/screen_size.dart';
import 'presentation/view/widgets/prounounce_view_body.dart';

class ProunounceViewLevels extends StatelessWidget {
  final List<Map<String, IconData>> targetList = [
    {'apple': Icons.apple},
    {'cat': FontAwesomeIcons.cat},
    {'octopus': FontAwesomeIcons.octopusDeploy},
    {'elephant': Icons.abc},
    {'pencil': FontAwesomeIcons.pencil},
    {'lion': Icons.abc},
    {'watermelon': Icons.abc},
  ];

  ProunounceViewLevels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(ScreenSize.height * 0.1), // Set AppBar height
        child: AppBar(
          backgroundColor: const Color(0xffF55454).withOpacity(0.8),
          titleSpacing: 0, // Remove default spacing around the title
          title: const Text(
            'Glassy Containers Grid',
            style: TextStyle(
              fontFamily: 'Poppins', // Use the Poppins font
              fontSize: 18, // Example font size
              fontWeight: FontWeight.bold, // Example font weight
            ),
            textAlign: TextAlign.center, // Center the text
          ),
          centerTitle: true,
          elevation: 0, // Optional: Removes shadow under the AppBar
        ),
      ),
      body: GridView.builder(
        itemCount: targetList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Adjusted to display 2 items per row
        ),
        itemBuilder: (context, index) {
          var target = targetList[index].keys.first;
          var icon = targetList[index][target]!;
          bool isEvenRow =
              index % 2 == 0; // Determine if the item is in an even row

          // Calculate container size based on screen size
          double containerWidth = ScreenSize.width * 0.3;
          double containerHeight = ScreenSize.height * 0.2;

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProunounceViewBody(targetWord: target),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: GlassyContainer(
                micIcon: Icons.mic,
                logoIcon: icon,
                width: containerWidth,
                height: containerHeight,
              ),
            ),
          );
        },
      ),
    );
  }
}

class GlassyContainer extends StatelessWidget {
  final IconData micIcon;
  final IconData logoIcon;
  final double width;
  final double height;

  const GlassyContainer({
    super.key,
    required this.micIcon,
    required this.logoIcon,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: const Color(0xffF55454).withOpacity(0.8), // Updated color
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black.withOpacity(0.1)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Icon(
                  logoIcon,
                  color: Colors.white,
                  size: ScreenSize.height * 0.06,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 2.0),
              child: Icon(micIcon, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
