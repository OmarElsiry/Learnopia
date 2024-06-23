import 'package:educational_kids_game/core/utils/screen_size.dart';
import 'package:educational_kids_game/features/Add%20Kid/presantation/view/widgets/age_kid_custom.dart';
import 'package:flutter/material.dart';

int addage = 0;

class ShowRowAddKidForm1 extends StatefulWidget {
  const ShowRowAddKidForm1({super.key});

  @override
  State<ShowRowAddKidForm1> createState() => _ShowRowAddKidForm1State();
}

class _ShowRowAddKidForm1State extends State<ShowRowAddKidForm1> {
  String selectedNum = '';

  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AgeKidCustom(
              num: '3',
              selected: selectedNum == '3',
              onSelected: (bool value) {
                setState(() {
                  selectedNum = value ? '3' : '';
                  if (value) {
                    addage = 3;
                  }
                });
              },
            ),
            AgeKidCustom(
              num: '4',
              selected: selectedNum == '4',
              onSelected: (bool value) {
                setState(() {
                  selectedNum = value ? '4' : '';
                  if (value) {
                    addage = 4;
                  }
                });
              },
            ),
            AgeKidCustom(
              num: '5',
              selected: selectedNum == '5',
              onSelected: (bool value) {
                setState(() {
                  selectedNum = value ? '5' : '';
                  if (value) {
                    addage = 5;
                  }
                });
              },
            ),
            AgeKidCustom(
              num: '6',
              selected: selectedNum == '6',
              onSelected: (bool value) {
                setState(() {
                  selectedNum = value ? '6' : '';
                  if (value) {
                    addage = 6;
                  }
                });
              },
            ),
          ],
        ),
        SizedBox(
          height: ScreenSize.height * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AgeKidCustom(
              num: '7',
              selected: selectedNum == '7',
              onSelected: (bool value) {
                setState(() {
                  selectedNum = value ? '7' : '';
                  if (value) {
                    addage = 7;
                  }
                });
              },
            ),
            AgeKidCustom(
              num: '8',
              selected: selectedNum == '8',
              onSelected: (bool value) {
                setState(() {
                  selectedNum = value ? '8' : '';
                  if (value) {
                    addage = 8;
                  }
                });
              },
            ),
            AgeKidCustom(
              num: '9',
              selected: selectedNum == '9',
              onSelected: (bool value) {
                setState(() {
                  selectedNum = value ? '9' : '';
                  if (value) {
                    addage = 9;
                  }
                });
              },
            ),
            AgeKidCustom(
              num: '10',
              selected: selectedNum == '10',
              onSelected: (bool value) {
                setState(() {
                  selectedNum = value ? '10' : '';
                  if (value) {
                    addage = 10;
                  }
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
