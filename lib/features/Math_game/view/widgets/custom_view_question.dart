import 'package:educational_kids_game/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomviewQuestion extends StatelessWidget {
  const CustomviewQuestion({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 300,
          height: 260,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
        ),
        Positioned(
          left: 99,
          child: Container(
            width: 2,
            color: Colors.black.withOpacity(0.3),
            child: const VerticalDivider(
              endIndent: 3,
              indent: 250,
              thickness: 1,
            ),
          ),
        ),
        Positioned(
          left: 195,
          child: Container(
            width: 2,
            color: Colors.black.withOpacity(0.3),
            child: const VerticalDivider(
              endIndent: 3,
              indent: 250,
              thickness: 1,
            ),
          ),
        ),
        Positioned(
          top: 85,
          child: Container(
            height: 2,
            width: 299,
            color: Colors.black.withOpacity(0.3),
          ),
        ),
        Positioned(
          top: 180,
          child: Container(
            height: 2,
            width: 299,
            color: Colors.black.withOpacity(0.3),
          ),
        ),
        const Positioned(
          top: 15,
          left: 40,
          child: Text(
            '5',
            style: StylesData.textLarg,
          ),
        ),
        const Positioned(
          top: 15,
          left: 140,
          child: Text(
            '+',
            style: StylesData.textLarg,
          ),
        ),
        const Positioned(
          top: 15,
          left: 240,
          child: Text(
            '3',
            style: StylesData.textLarg,
          ),
        ),
        const Positioned(
          top: 105,
          left: 40,
          child: Text(
            '5',
            style: StylesData.textLarg,
          ),
        ),
        const Positioned(
          top: 105,
          left: 145,
          child: Text(
            '-',
            style: StylesData.textLarg,
          ),
        ),
        const Positioned(
          top: 105,
          left: 240,
          child: Text(
            '2',
            style: StylesData.textLarg,
          ),
        ),
        const Positioned(
          top: 190,
          left: 40,
          child: Text(
            '7',
            style: StylesData.textLarg,
          ),
        ),
        const Positioned(
          top: 190,
          left: 140,
          child: Text(
            '+',
            style: StylesData.textLarg,
          ),
        ),
       const  Positioned(
          top: 190,
          left: 240,
          child: Text(
            '3',
            style: StylesData.textLarg,
          ),
        ),
      ],
    );
  }
}
