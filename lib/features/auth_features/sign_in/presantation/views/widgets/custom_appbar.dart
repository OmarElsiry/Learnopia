import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppbar2 extends StatelessWidget {
  const CustomAppbar2({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 434,
      decoration: const BoxDecoration(
        color: Color(0xffFFFFFF),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 25, left: 17, right: 500),
        child: IconButton(
          icon: const Icon(FontAwesomeIcons.arrowLeft),
          onPressed: () {},
        ),
      ),
    );
  }
}
