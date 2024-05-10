
import 'package:flutter/material.dart';

class ShowIcon extends StatelessWidget {
  const ShowIcon({super.key, required this.color, required this.icon, this.onpressed});
  final Color color;
  final IconData icon;
 final  void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: IconButton(
          color: Colors.white,
          icon: Icon(icon),
          onPressed:onpressed ,
        ),
      ),
    );
  }
}
