import 'package:flutter/material.dart';

class CustomViewContainer extends StatelessWidget {
  const CustomViewContainer({
    super.key,
    required this.unitTitle, // New parameter for Unit Title
    required this.title,
    required this.color,
    this.ontap,
    required this.showCompletionImage, // Ensure this is provided
  });

  final String unitTitle; // New field for Unit Title
  final String title;
  final Color color;
  final void Function()? ontap;
  final bool showCompletionImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          color: color,
        ),
        width: MediaQuery.of(context).size.width * 0.46,
        height: 167,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              unitTitle, // Use the new parameter
              style: const TextStyle(fontSize: 30),
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 24),
            ),
            if (showCompletionImage)
              Image.asset('assets/images/Completion.png'),
          ],
        ),
      ),
    );
  }
}
