import 'package:educational_kids_game/features/Add%20Kid/presantation/view/widgets/addkid_view_body.dart';
import 'package:flutter/material.dart';

class AddKidView extends StatelessWidget {
  const AddKidView({super.key});
  static String addkidid = 'add kid view';

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: AddKidViewBody() ,
    );
  }
}
