import 'package:flutter/material.dart';

class ContanerViewNext extends StatefulWidget {
  const ContanerViewNext({super.key});

  @override
  State<ContanerViewNext> createState() => _ContanerViewNextState();
}

class _ContanerViewNextState extends State<ContanerViewNext> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        width: 324,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffF55454),
        ),
        child: const Center(
          child: Text(
            'Next',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
