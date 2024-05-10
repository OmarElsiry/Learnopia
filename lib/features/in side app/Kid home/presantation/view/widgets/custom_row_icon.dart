import 'package:educational_kids_game/features/Add%20Kid/presantation/view/widgets/addkid_view_body.dart';
import 'package:educational_kids_game/features/Add%20Kid/presantation/view/widgets/show_Row_add_kid.dart';
import 'package:flutter/material.dart';

class CustomRowIcon extends StatelessWidget {
  const CustomRowIcon({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            left: 290,
            child: GestureDetector(
              onTap: () {},
              child: Image.asset('assets/images/Ellipse 13.png'),
            ),
          ),
          Positioned(
            left: 200,
            top: 15,
            child: Text('✋ Hi, ${AddKidViewBody.kidname} '),
          ),
          Positioned(
            left: 225,
            top: 35,
            child: Text('$addage Years'),
          ),
          Positioned(
            left: 25,
            top: 15,
            child: Image.asset('assets/images/Rectangle 78.png'),
          ),
          Positioned(
            left: 25,
            top: 35,
            child: Image.asset('assets/images/Rectangle 79.png'),
          ),
          const Positioned(
            left: 42,
            top: 15,
            child: Text('10'),
          ),
          const Positioned(
            left: 42,
            top: 35,
            child: Text('5'),
          )
        ],
      ),
    );
  }
}
