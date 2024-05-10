import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344.96,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xff544C4C).withOpacity(0.1),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          ListTile(
            contentPadding: const EdgeInsets.only(right: 150),
            title: const Icon(Icons.person_outline),
            trailing: TextButton(
              child: const Text(
                'Edit profile',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              onPressed: () {},
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(right: 165),
            title: const Icon(FontAwesomeIcons.triangleExclamation),
            trailing: TextButton(
              child: const Text(
                'security',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              onPressed: () {},
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(right: 133),
            title: const Icon(FontAwesomeIcons.bell),
            trailing: TextButton(
              child: const Text(
                'Notifications',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              onPressed: () {},
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(right: 167),
            title: const Icon(FontAwesomeIcons.lock),
            trailing: TextButton(
              child: const Text(
                'Privacy',
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




class SupportAbout extends StatelessWidget {
  const SupportAbout({super.key});
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
            title: const Icon(FontAwesomeIcons.creditCard),
            trailing: TextButton(
              child: const Text(
                'My Subscribtione',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              onPressed: () {},
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(right: 119),
            title: const Icon(FontAwesomeIcons.circleQuestion),
            trailing: TextButton(
              child: const Text(
                'Help & Support',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              onPressed: () {},
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(right: 93),
            title: const Icon(FontAwesomeIcons.seedling),
            trailing: TextButton(
              child: const Text(
                'Terms and Policies',
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


class CacheCellular extends StatelessWidget {
  const CacheCellular({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 344.96,
      height: 105,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xff544C4C).withOpacity(0.1),
      ),
      child: ListView(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          ListTile(
            contentPadding: const EdgeInsets.only(right: 127),
            title: const Icon(FontAwesomeIcons.trash),
            trailing: TextButton(
              child: const Text(
                'Free up space',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              onPressed: () {},
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(right: 145),
            title: const Icon(FontAwesomeIcons.database),
            trailing: TextButton(
              child: const Text(
                'Data Saver',
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
