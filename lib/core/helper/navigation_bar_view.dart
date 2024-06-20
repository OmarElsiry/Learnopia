import 'package:educational_kids_game/features/Kid%20home/view/widgets/navigate_bar.dart';
import 'package:flutter/material.dart';

class NavigationBarView extends StatelessWidget {
  const NavigationBarView({super.key});
  static String navigationbar = 'navigation bar';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: NavigateBar(),
    );
  }
}
