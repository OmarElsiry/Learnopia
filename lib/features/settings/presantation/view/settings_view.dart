import 'package:flutter/material.dart';
import 'package:educational_kids_game/features/navigation_bar_view.dart'; // Make sure to import the correct path

import 'widgets/settings_view_body.dart'; // Make sure to import the correct path

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});
  static String settingsviewid = 'Settings id';

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // Navigate to the NavigationBarView when the back button is pressed
        Navigator.pushReplacementNamed(
            context, NavigationBarView.navigationbar);
        // Return false to prevent the default back button behavior
        return false;
      },
      child: const Scaffold(
        body:
            SettingsViewBody(), // Assuming you have a SettingsViewBody widget defined
      ),
    );
  }
}
