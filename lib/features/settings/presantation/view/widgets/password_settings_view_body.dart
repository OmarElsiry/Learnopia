import 'package:educational_kids_game/features/settings/presantation/view/Section/navigate_to_setting_section.dart';
import 'package:educational_kids_game/features/settings/presantation/view/Section/show_num_section.dart';
import 'package:educational_kids_game/features/settings/presantation/view/widgets/custom_AppBar_Setting.dart';
import 'package:flutter/material.dart';

class PasswordSettingsViewBody extends StatefulWidget {
  const PasswordSettingsViewBody({super.key});

  @override
  State<PasswordSettingsViewBody> createState() =>
      _PasswordSettingsViewBodyState();
}

class _PasswordSettingsViewBodyState extends State<PasswordSettingsViewBody> {
  List<String> selectedNums = [];
  void resetSelectedNums() {
    setState(() {
      selectedNums.clear(); // Clear the selected numbers
    });
  }

  void updateSelectedNums(List<String> newNums) {
    setState(() {
      selectedNums = newNums;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          const SafeArea(
            child: CustomAppBarSetting(
              color: Colors.white,
              title: 'open settings',
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Image.asset(
            'assets/images/lock_icon.png',
            cacheWidth: 50, // Adjust as needed
            cacheHeight: 45, // Adjust as needed
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'four five two six',
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff07A00E),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          ShowNumSection(
            onSelectedNumsChanged: updateSelectedNums,
          ),
          const SizedBox(
            height: 12,
          ),
          // In password_settings_view_body.dart, inside the build method
          NavigateToSettingSection(
            selectedNum: selectedNums,
            onResetSelectedNums: resetSelectedNums, // Pass the method here
          ),
          const SizedBox(
            height: 52,
          ),
          // const CustomContainerBack(),
        ],
      ),
    );
  }
}
