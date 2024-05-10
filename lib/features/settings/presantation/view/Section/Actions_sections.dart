

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ActionsSection extends StatelessWidget {
  const ActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344.96,
      height: 165,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xff544C4C).withOpacity(0.1),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          ListTile(
            contentPadding: const EdgeInsets.only(right: 104),
            title: const Icon(FontAwesomeIcons.flag),
            trailing: TextButton(
              child: const Text(
                'Report a problem',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              onPressed: () {},
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(right: 130),
            title: const Icon(FontAwesomeIcons.userGroup),
            trailing: TextButton(
              child: const Text(
                'Add account',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              onPressed: () {},
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(right: 160),
            title: const Icon(FontAwesomeIcons.arrowRightFromBracket),
            trailing: TextButton(
              child: const Text(
                'Log out',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
