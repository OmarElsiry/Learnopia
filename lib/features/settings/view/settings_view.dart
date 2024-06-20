import 'package:flutter/material.dart';

import 'widgets/settings_view_body.dart'; // Make sure to import the correct path

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});
  static String settingsviewid = 'Settings id';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:
          SettingsViewBody(), // Assuming you have a SettingsViewBody widget defined
    );
  }
}
