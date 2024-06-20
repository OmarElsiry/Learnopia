import 'package:flutter/material.dart';

import 'widgets/password_settings_view_body.dart';

class PasswordSettingsView extends StatelessWidget {
  
  const PasswordSettingsView({super.key});
  static String settingsid = 'settings id';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PasswordSettingsViewBody(),
    );
  }
}
