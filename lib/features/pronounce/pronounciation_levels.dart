import 'package:flutter/material.dart';

import '../../core/utils/screen_size.dart';
import 'presentation/view/widgets/prounounce_view_body.dart';

class ProunounceViewLevels extends StatelessWidget {
  final List<Map<String, IconData>> targetList = [
    {'snow': Icons.ac_unit},
    {'clock': Icons.access_alarm},
    {'man': Icons.accessibility},
    {'white house': Icons.account_balance},
    {'mouse': Icons.mouse},
    {'breakfast': Icons.breakfast_dining},
    {'airplane': Icons.airplanemode_active},
    {'star': Icons.star_border_outlined},
    {'target9': Icons.album},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Glassy Containers Grid'),
      ),
      body: GridView.builder(
        itemCount: targetList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Adjusted to display 2 items per row
        ),
        itemBuilder: (context, index) {
          var target = targetList[index].keys.first;
          var icon = targetList[index][target]!;
          bool isEvenRow =
              index % 2 == 0; // Determine if the item is in an even row

          // Calculate container size based on screen size
          double containerWidth = ScreenSize.width * 0.3;
          double containerHeight = ScreenSize.height * 0.2;

          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PronounceViewBody(targetWord: target),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: GlassyContainer(
                micIcon: Icons.mic,
                logoIcon: icon,
                width: containerWidth,
                height: containerHeight,
              ),
            ),
          );
        },
      ),
    );
  }
}

class GlassyContainer extends StatelessWidget {
  final IconData micIcon;
  final IconData logoIcon;
  final double width;
  final double height;

  GlassyContainer({
    required this.micIcon,
    required this.logoIcon,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.3),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.black.withOpacity(0.1)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Icon(logoIcon, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 2.0),
              child: Icon(micIcon, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
