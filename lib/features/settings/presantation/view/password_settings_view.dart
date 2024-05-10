import 'package:educational_kids_game/features/settings/presantation/view/widgets/password_settings_view_body.dart';
import 'package:flutter/material.dart';

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
