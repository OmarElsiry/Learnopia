import 'package:educational_kids_game/core/utils/Assets.dart';
import 'package:educational_kids_game/features/sign_up/views/widgets/custom_icon.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.icon, this.ontap});

  final IconData icon;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Row(
        children: [
          CustomIcon(
            ontap: ontap,
            icon: icon,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: Image.asset(AssetsData.starappbar),
          ),
        ],
      ),
    );
  }
}
