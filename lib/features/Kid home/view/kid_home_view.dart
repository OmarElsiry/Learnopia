
import 'package:educational_kids_game/features/Kid%20home/view/widgets/kid_home_view_body.dart';
import 'package:flutter/material.dart';

class KidHomeView extends StatelessWidget {
  const KidHomeView({super.key});
  static String kidhomeid = 'kid home';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: KidHomeViewBody(),
    );
  }
}
