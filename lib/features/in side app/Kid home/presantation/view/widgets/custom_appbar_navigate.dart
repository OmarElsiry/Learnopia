import 'package:educational_kids_game/features/in%20side%20app/Challenges/presantation/view/Games_view.dart';
import 'package:educational_kids_game/features/in%20side%20app/Kid%20home/presantation/view/kid_home_view.dart';
import 'package:educational_kids_game/features/in%20side%20app/kid%20profile/presantation/view/kid_profile_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNavigateBar extends StatefulWidget {
  const CustomNavigateBar({super.key});

  @override
  State<CustomNavigateBar> createState() => _CustomNavigateBarState();
}

class _CustomNavigateBarState extends State<CustomNavigateBar> {
  int index = 0;
  final screens = [
    const KidHomeView(),
    const GamesView(),
    const KidProfileView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: const MaterialStatePropertyAll(
            TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        child: NavigationBar(
          selectedIndex: index,
          animationDuration: const Duration(milliseconds: 200),
          backgroundColor: Colors.transparent,
          onDestinationSelected: (index) => setState(() => this.index = index),
          destinations: [
            NavigationDestination(
                icon: IconButton(
                  icon: const Icon(FontAwesomeIcons.house),
                  onPressed: () {},
                ),
                label: 'Home'),
            NavigationDestination(
                icon: IconButton(
                  icon: const Icon(FontAwesomeIcons.handPeace),
                  onPressed: () {
                    Navigator.pushNamed(context, GamesView.gamesviewid);
                  },
                ),
                label: 'Challenges'),
            NavigationDestination(
                icon: IconButton(
                  icon: const Icon(FontAwesomeIcons.userGroup),
                  onPressed: () {
                    Navigator.pushNamed(context, KidProfileView.kidprofileid);
                  },
                ),
                label: 'Profile'),
            NavigationDestination(
                icon: IconButton(
                  icon: const Icon(FontAwesomeIcons.gear),
                  onPressed: () {},
                ),
                label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
