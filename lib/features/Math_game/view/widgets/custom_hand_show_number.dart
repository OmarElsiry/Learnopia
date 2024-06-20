import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHandShowNumber extends StatelessWidget {
  const CustomHandShowNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: 360,
          height: 190,
          child: Image.asset('assets/images/image 3.png'),
        ),
        Positioned(
          top: 55,
          left: 10,
          child: Text(
            '1',
            style: GoogleFonts.josefinSlab(fontSize: 30),
          ),
        ),
        Positioned(
          top: 20,
          left: 25,
          child: Text(
            '2',
            style: GoogleFonts.josefinSlab(fontSize: 30),
          ),
        ),
        Positioned(
          left: 55,
          child: Text(
            '3',
            style: GoogleFonts.josefinSlab(fontSize: 30),
          ),
        ),
        Positioned(
          left: 88,
          top: 10,
          child: Text(
            '4',
            style: GoogleFonts.josefinSlab(fontSize: 30),
          ),
        ),
        Positioned(
          left: 140,
          top: 80,
          child: Text(
            '5',
            style: GoogleFonts.josefinSlab(fontSize: 30),
          ),
        ),
        Positioned(
          left: 200,
          top: 70,
          child: Text(
            '6',
            style: GoogleFonts.josefinSlab(fontSize: 30),
          ),
        ),
        Positioned(
          left: 260,
          top: 10,
          child: Text(
            '7',
            style: GoogleFonts.josefinSlab(fontSize: 30),
          ),
        ),
        Positioned(
          left: 290,
          child: Text(
            '8',
            style: GoogleFonts.josefinSlab(fontSize: 30),
          ),
        ),
        Positioned(
          left: 320,
          top: 20,
          child: Text(
            '9',
            style: GoogleFonts.josefinSlab(fontSize: 30),
          ),
        ),
        Positioned(
          left: 335,
          top: 60,
          child: Text(
            '10',
            style: GoogleFonts.josefinSlab(fontSize: 25),
          ),
        ),
      ],
    );
  }
}
