import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomViewContainer extends StatelessWidget {
  const CustomViewContainer(
      {super.key, required this.title, required this.color, this.ontap});
  final String title;
  final Color color;
  final void Function()? ontap;
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
            const Text(
              'Unit 1',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 24),
            ),
            Image.asset('assets/images/Completion.png'),
          ],
        ),
      ),
    );
  }
}

class CostomViewIcon extends StatelessWidget {
  const CostomViewIcon({super.key, required this.color});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        color: color,
      ),
      width: MediaQuery.of(context).size.width * 0.46,
      height: 167,
      child: Icon(
        FontAwesomeIcons.lock,
        color: Colors.black.withOpacity(0.6),
        size: 50,
      ),
    );
  }
}
