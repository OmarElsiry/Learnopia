import 'package:flutter/material.dart';

class RowPhotoShow extends StatelessWidget {
  const RowPhotoShow({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final scrrenwidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: scrrenwidth * 0.001,
          ),
          Image.asset(
            'assets/images/Rectangle 48.png',
          ),
          SizedBox(
            width: width * 0.01,
          ),
          Image.asset(
            'assets/images/Rectangle 49.png',
          )
        ],
      ),
    );
  }
}
