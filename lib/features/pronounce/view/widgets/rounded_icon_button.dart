import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final bool isActive;

  const RoundedIconButton({
    super.key,
    required this.icon,
    required this.color,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(50, 0),
      child: CircleAvatar(
        radius: isActive ? 16 : 24,
        backgroundColor: color.withOpacity(isActive ? 0.6 : 1.0),
        child: Icon(icon, color: Colors.white),
      ),
    );
  }
}
