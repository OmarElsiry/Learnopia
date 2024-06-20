import 'package:educational_kids_game/features/Add%20Kid/presantation/view/widgets/addkid_view_body.dart';
import 'package:flutter/material.dart';

class InfoProfile extends StatelessWidget {
  const InfoProfile({super.key});
  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();

    // Format the date and time as a string
    final String joinedDate = '⌛️Joined ${now.month}/${now.year}';

    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.11,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              children: [
                Text(
                  AddKidViewBody.kidname,
                  style: const TextStyle(fontSize: 30),
                ),
                Text(
                  AddKidViewBody.kidname,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
                Text(
                  joinedDate,
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/Ellipse 13.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
