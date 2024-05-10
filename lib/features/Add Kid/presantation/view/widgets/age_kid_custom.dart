import 'package:flutter/material.dart';

class AgeKidCustom extends StatelessWidget {
  const AgeKidCustom({
    super.key,
    required this.num,
    this.selected = false, required this.onSelected,
  });
  final String num;
  final bool selected;
   final ValueChanged<bool> onSelected;
  @override
  Widget build(BuildContext context) {
    final scrrenheight = MediaQuery.of(context).size.height * 0.09;
    return GestureDetector(
      onTap: () => onSelected(!selected),
      child: Container(
        height: scrrenheight,
        width: 71,
        decoration: BoxDecoration(
          color: selected ? Colors.blue : const Color(0xffEB9F4A),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          children: [
            Text(
              num,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            const Text(
              'Year',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
