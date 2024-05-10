import 'package:educational_kids_game/features/settings/presantation/view/Section/Actions_sections.dart';
import 'package:educational_kids_game/features/settings/presantation/view/widgets/custom_AppBar_Setting.dart';
import 'package:educational_kids_game/features/settings/presantation/view/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';


class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            CustomAppBarSetting(
              color: Colors.transparent,
              title: 'Settings',
            ),
            Text(
              'Account',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 19,
            ),
            CustomListView(),
            SizedBox(
              height: 19,
            ),
            Text(
              'Support & About',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 15,
            ),
            SupportAbout(),
            SizedBox(
              height: 19,
            ),
            Text(
              'Cache & cellular',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 15,
            ),
            CacheCellular(),
            SizedBox(
              height: 19,
            ),
            Text(
              'Actions',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: 15,
            ),
            ActionsSection(),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}

