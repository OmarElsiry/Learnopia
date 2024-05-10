import 'package:flutter/material.dart';

class RowTextview extends StatelessWidget {
  const RowTextview({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SingleChildScrollView(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(
              width: 85,
            ),
            Image.asset('assets/images/Vector.png'),
            const Text(
              ' 18/40',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}