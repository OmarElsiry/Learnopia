import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:educational_kids_game/features/settings/presantation/view/widgets/container_show_num.dart';
import 'package:educational_kids_game/features/settings/presantation/view/widgets/show_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../auth_features/sign_up/presantation/views/widgets/Awesome_widgets.dart';
import '../../../../in side app/Kid home/presantation/view/kid_home_view.dart';
import '../settings_view.dart';

// In navigate_to_setting_section.dart
class NavigateToSettingSection extends StatefulWidget {
  final List<String> selectedNum;
  final VoidCallback onResetSelectedNums; // Add this line

  const NavigateToSettingSection({
    super.key,
    required this.selectedNum,
    required this.onResetSelectedNums, // Add this line
  });

  @override
  State<NavigateToSettingSection> createState() =>
      _NavigateToSettingSectionState();
}

class _NavigateToSettingSectionState extends State<NavigateToSettingSection> {
  String selectedNum = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Table(
        children: [
          TableRow(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: ShowIcon(
                  icon: FontAwesomeIcons.x,
                  color: Colors.grey,
                  onpressed: () => Navigator.pushReplacementNamed(
                      context, KidHomeView.kidhomeid),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: ShowNum(
                  num: '0',
                  onSelected: (bool value) {
                    setState(() {
                      selectedNum = value ? '0' : '';
                    });
                  },
                  selected: selectedNum == '1',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: ShowIcon(
                  color: Colors.purple,
                  icon: FontAwesomeIcons.arrowRight,
                  onpressed: () {
                    // Convert the list of selected numbers to a string
                    String selectedNumString = widget.selectedNum.join();
                    // Define the expected sequence as a string
                    String expectedSequence = '4526';

                    if (selectedNumString == expectedSequence) {
                      Navigator.pushReplacementNamed(
                          context, SettingsView.settingsviewid);
                    } else {
                      Awesome_widgets(context, DialogType.error, 'Error',
                          'please enter the numbers below correctly');
                    }
                    widget.onResetSelectedNums(); // Reset selected numbers
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
