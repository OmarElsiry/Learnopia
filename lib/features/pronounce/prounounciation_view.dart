import 'package:flutter/material.dart';

import 'view/widgets/prounounce_view_body.dart';

class ProunounceView extends StatelessWidget {
  const ProunounceView({super.key});
  static String prounounceViewid = 'Prounounce View';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProunounceViewBody(targetWord: "school"),
    );
  }
}
