import 'package:educational_kids_game/core/utils/screen_size.dart';
import 'package:educational_kids_game/features/in%20side%20app/Kid%20home/presantation/view/widgets/navigate_bar.dart';
import 'package:flutter/material.dart';

import '../core/utils/levels_passed.dart';

class NavigationBarView extends StatelessWidget {
  const NavigationBarView({super.key});
  static String navigationbar = 'navigation bar';
  @override
  Widget build(BuildContext context) {
    LoggedBoolClass.addloggedBool("Logged");
    ScreenSize.initialize(context);
    return const Scaffold(
      bottomNavigationBar: NavigateBar(),
    );
  }
}
