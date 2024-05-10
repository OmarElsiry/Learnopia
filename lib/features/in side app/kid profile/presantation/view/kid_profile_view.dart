import 'package:educational_kids_game/features/in%20side%20app/kid%20profile/presantation/view/widgets/kid_profile_view_body.dart';
import 'package:flutter/material.dart';

class KidProfileView extends StatelessWidget {
  const KidProfileView({super.key});
  static String kidprofileid = 'kid profile';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: KidProfileViewBody(),
    );
  }
}
