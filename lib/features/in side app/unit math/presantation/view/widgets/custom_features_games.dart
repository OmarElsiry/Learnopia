import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomFeaturesGames extends StatelessWidget {
  const CustomFeaturesGames({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            left: 110,
            child: Image.asset('assets/images/BG 1.png'),
          ),
          Positioned(
            top: 45,
            left: 143,
            child: Image.asset('assets/images/Hands Pencil 1.png'),
          ),
          Positioned(
            left: 10,
            top: 180,
            child: Image.asset('assets/images/BG 1.png'),
          ),
          const Positioned(
            left: 150,
            top: 150,
            child: Text(
              'writing',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Positioned(
            left: 40,
            top: 210,
            child: Image.asset('assets/images/Hands Book.png'),
          ),
          const Positioned(
            left: 45,
            top: 330,
            child: Text(
              'reading',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Positioned(
            left: 210,
            top: 190,
            child: Image.asset('assets/images/BG 1.png'),
          ),
          Positioned(
            left: 235,
            top: 210,
            child: Image.asset('assets/images/Dayflow Bike.png'),
          ),
          const Positioned(
            left: 250,
            top: 330,
            child: Text(
              'Games',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Positioned(
            left: 115,
            top: 360,
            child: Image.asset('assets/images/BG 4.png'),
          ),
          Positioned(
            left: 160,
            top: 400,
            child: Icon(
              FontAwesomeIcons.lock,
              color: Colors.black.withOpacity(0.6),
              size: 50,
            ),
          ),
          Positioned(
            left: 20,
            top: 510,
            child: Image.asset('assets/images/BG 4.png'),
          ),
          Positioned(
            left: 63,
            top: 550,
            child: Icon(
              FontAwesomeIcons.lock,
              color: Colors.black.withOpacity(0.6),
              size: 50,
            ),
          ),
          Positioned(
            left: 200,
            top: 510,
            child: Image.asset('assets/images/BG 4.png'),
          ),
          Positioned(
            left: 245,
            top: 550,
            child: Icon(
              FontAwesomeIcons.lock,
              color: Colors.black.withOpacity(0.6),
              size: 50,
            ),
          ),
        ],
      ),
    );
  }
}
