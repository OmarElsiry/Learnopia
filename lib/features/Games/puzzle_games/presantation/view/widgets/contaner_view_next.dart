import 'package:flutter/material.dart';

class ContanerViewNext extends StatelessWidget {
  const ContanerViewNext({super.key, required this.ontap});
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap ,
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
